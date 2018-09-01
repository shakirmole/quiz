<?

if ( $action == 'browse' ) {
	$tData['name'] = $_GET['name'];
	
	$uquizzes = $Quizzes->search(SCHOOLID,'upcoming');
	$oquizzes = $Quizzes->search(SCHOOLID,'started');
	
	foreach ($oquizzes as $v=>$r) {
		$qclasses = $QuizClasses->search($r['id']);
		foreach ($qclasses as $qc) {
			$oquizzes[$v]['qclasses'][] = $qc['grade'].' '.$qc['division'];
		}
		$tData['oquizzes'] = $oquizzes;
	}
	
	foreach ($uquizzes as $v=>$r) {
		$qclasses = $QuizClasses->search($r['id']);
		foreach ($qclasses as $qc) {
			$uquizzes[$v]['qclasses'][] = $qc['grade'].' '.$qc['division'];
		}
		$tData['uquizzes'] = $uquizzes;
	}
	
	$data['content'] = loadTemplate('student_quizzes.tpl.php',$tData);
}

if ( $action == 'quiz_files' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	$quizid = $_GET['id'];
	
	$tData['qfiles'] = $QuizFiles->search($quizid);
	$tData['quiz'] = $Quizzes->getDetails($quizid);
	
	$data['content'] = loadTemplate('quiz_files.tpl.php',$tData);
}

if ( $action == 'takequiz' ) {
	
	$id = $_GET['id'];
	
	$squiz = $StudentQuizzes->search($id,USER_ID);
	if ($squiz[0]['marked']) {
		$_SESSION['message'] = 'Your paper has been marked';
		redirectBack();
	}
		
	$tData['quiz'] = $Quizzes->getDetails($id,SCHOOLID);
	$sections = $QuizSections->search($id);
	
	foreach ($sections as $v=>$r) {
		$typeid = $r['typeid'];
		$sectionid = $r['id'];
		
		$tData['sections'][$r['id']]['title'] = $r['title'];
		$tData['sections'][$r['id']]['marks'] = $r['marks'];
		$tData['sections'][$r['id']]['sortno'] = $r['sortno'];
		
		$questions = '';
		$questions = $QuizQuestions->search($id,$sectionid);
		
		foreach ($questions as $vq=>$q) {
			$qnid = $q['id'];
			switch ($typeid) {
				case 1: $questions[$vq]['fb'] = $FillBlanks->search($qnid,$sectionid); break;
				case 2: $questions[$vq]['sa'] = $ShortAnswers->search($qnid,$sectionid); break;
				case 3: $questions[$vq]['la'] = $LongAnswers->search($qnid,$sectionid); break;
				case 4: $questions[$vq]['mc'] = $MultipleChoices->search($qnid,$sectionid); break;
				case 5: { 
					$questions[$vq]['mi'] = $MatchingItems->search($qnid,$sectionid);
					foreach ($questions[$vq]['mi'] as $vmi=>$mi) {
						$answers[$qnid][$vmi]['answer'] = $mi['answer'];
					}
					break;
				}
				case 6: $questions[$vq]['tf'] = $TrueFalses->search($qnid,$sectionid); break;
			}			
		}
		$tData['sections'][$r['id']]['qns'] = $questions;
	}
	// print_R($tData['sections']);
	
	foreach ($answers as $qnid=>$r) {
		shuffle($answers[$qnid]);
	}
	
	$tData['answers'] = $answers;
	
	$sanswers = $StudentQuizzes->getAnswers($id,USER_ID);
	foreach ($sanswers as $v=>$r) {
		$tData['sanswers'][$r['qid']][] = $r;
	}
	
	$data['content'] = loadTemplate('quiz_display.tpl.php',$tData);
}

if ( $action == 'quiz_save' ) {
	
	$obj = null;
	
	$fb = $_POST['fb'];
	$sa = $_POST['sa'];
	$la = $_POST['la'];
	$mc = $_POST['mc'];
	$mi = $_POST['mi'];
	$tf = $_POST['tf'];
	$miniData['quizid'] = $_POST['quizid'];
	$miniData['studentid'] = USER_ID;	
	$sq = $StudentQuizzes->find($miniData);
	
	if ($sq) {
		$miniData['modifiedby'] = USER_ID;
		$StudentQuizzes->update($sq[0]['id'],$miniData);
		$sqid = $sq[0]['id'];
	} else {
		$miniData['createdby'] = USER_ID;
		$miniData['modifiedby'] = USER_ID;
		$StudentQuizzes->insert($miniData);
		$sqid = $StudentQuizzes->lastId();
		
		$subject = $quiz['name']. ' - Test Completion';
		$from = 'fazleabbas@gmail.com';
		$fromName = 'Online Test System';
		$student = $Students->getDetails('',USER_ID);
		$quiz = $Quizzes->getDetails($miniData['quizid']);
		
		$body_html ='<br /><br />
					The student '.$student['name'].', has completed the test '.$quiz['name'].', on the online Test System.
					<br /><br />
					Please click on this link to access the website.
					<a href="http://test.com/">Online Test System</a>
					<br /><br />
					Thank you.';
		
		if ($quiz['email']) sendEmail($quiz['email'], $subject, $body_text, $body_html, $from, $fromName); //email
		
		$subject = $quiz['name']. ' - Test Completion';
		$from = 'fazleabbas@gmail.com';
		$fromName = 'Online Test System';
		$body_html ='<br /><br />
					The test '.$quiz['name'].' has just been completed by you on the online Test System.
					<br /><br />
					Please click on this link to access the website.
					<a href="http://test.com/">Online Test System</a>
					<br /><br />
					Thank you.';
		
		if ($student['email']) sendEmail($student['email'], $subject, $body_text, $body_html, $from, $fromName); //email
	}
	
	$dData['squizid'] = $sqid;
	$QuizAnswers->deleteWhere($dData);
	
	foreach ($fb as $qnid=>$rs) { //FITB
		$qaData['squizid'] = $sqid;
		$qaData['questionid'] = $qnid;
		$QuizAnswers->insert($qaData);
		$fbData['answerid'] = $QuizAnswers->lastId();
		
		$sql = 'delete from fbanswers where answerid not in (select id from quizanswers)';
		executeQuery($sql);
		
		foreach ($rs as $fbid=>$r) {
			$fbData['fbid'] = $fbid;
			$fbData['answer'] = $r;
			$FBAnswers->insert($fbData);
		}
	}
	
	foreach ($sa as $qnid=>$r) {
		$qaData['squizid'] = $sqid;
		$qaData['questionid'] = $qnid;
		$QuizAnswers->insert($qaData);
		$saData['answerid'] = $QuizAnswers->lastId();
		
		$sql = 'delete from saanswers where answerid not in (select id from quizanswers)';
		executeQuery($sql);
		
		$saData['answer'] = $r;
		$SAAnswers->insert($saData);
	}
	
	foreach ($la as $qnid=>$r) {
		$qaData['squizid'] = $sqid;
		$qaData['questionid'] = $qnid;
		$QuizAnswers->insert($qaData);
		$laData['answerid'] = $QuizAnswers->lastId();
		
		$sql = 'delete from laanswers where answerid not in (select id from quizanswers)';
		executeQuery($sql);
		
		$laData['answer'] = $r;
		$LAAnswers->insert($laData);
	}
	
	foreach ($mc as $qnid=>$r) {
		$qaData['squizid'] = $sqid;
		$qaData['questionid'] = $qnid;
		$QuizAnswers->insert($qaData);
		$mcData['answerid'] = $QuizAnswers->lastId();
		
		$sql = 'delete from mcanswers where answerid not in (select id from quizanswers)';
		executeQuery($sql);
		
		$mcData['answer'] = $r;
		$MCAnswers->insert($mcData);
	}
	
	foreach ($mi as $qnid=>$rs) { //FITB
		$qaData['squizid'] = $sqid;
		$qaData['questionid'] = $qnid;
		$QuizAnswers->insert($qaData);
		$miData['answerid'] = $QuizAnswers->lastId();
		
		$sql = 'delete from mianswers where answerid not in (select id from quizanswers)';
		executeQuery($sql);
		
		foreach ($rs as $miid=>$r) {
			$miData['miid'] = $miid;
			$miData['answer'] = $r;
			$MIAnswers->insert($miData);
		}
	}
	
	foreach ($tf as $qnid=>$r) {
		$qaData['squizid'] = $sqid;
		$qaData['questionid'] = $qnid;
		$QuizAnswers->insert($qaData);
		$tfData['answerid'] = $QuizAnswers->lastId();
		
		$sql = 'delete from tfanswers where answerid not in (select id from quizanswers)';
		executeQuery($sql);
		
		$tfData['answer'] = $r;
		$TFAnswers->insert($tfData);
	}
	
	// $obj->msg='Updated Answers';
	// $obj->status=1;
	// $obj->redirect='?module=student_quizzes&action=takequiz&id='.$_POST['quizid'];
	// $obj->mainredirect='?module=quizzes&action=index';
	
	// $response[]=$obj;
	// $data['content'] = $response;
	
	$_SESSION['message'] = 'Quiz Answers Saved';
	redirect('student_quizzes','browse');
}

if ($action == 'myquizzes') {

	$tData['quizzes'] = $StudentQuizzes->search('',USER_ID);
	$data['content'] = loadTemplate('my_quizzes.tpl.php',$tData);
}

if ($action == 'quiz_result') {
	$quizid = $_GET['id'];
	$sid = $_GET['sid'];
	$tData['print'] = $_GET['print'];
	
	$tData['quiz'] = $Quizzes->get($quizid);
	$tData['qsecs'] = $QuizSections->getMarks($sid,$quizid);
	$tData['school'] = $Schools->getDetails(SCHOOLID);
	$tData['squizzes'] = $StudentQuizzes->search($quizid);
	
	if ($sid) {
		$squizzes = $StudentQuizzes->search($quizid,$sid);
		$tData['squiz'] = $squizzes[0];
		
		$sections = $QuizSections->search($quizid);
		foreach ($sections as $v=>$r) {
			$typeid = $r['typeid'];
			$sectionid = $r['id'];
			
			$tData['sections'][$r['id']]['title'] = $r['title'];
			$tData['sections'][$r['id']]['marks'] = $r['marks'];
			$tData['sections'][$r['id']]['sortno'] = $r['sortno'];
			
			$questions = '';
			$questions = $QuizQuestions->search($quizid,$sectionid);
			
			foreach ($questions as $vq=>$q) {
				$qnid = $q['id'];
				switch ($typeid) {
					case 1: $questions[$vq]['fb'] = $FillBlanks->search($qnid,$sectionid); break;
					case 2: $questions[$vq]['sa'] = $ShortAnswers->search($qnid,$sectionid); break;
					case 3: $questions[$vq]['la'] = $LongAnswers->search($qnid,$sectionid); break;
					case 4: $questions[$vq]['mc'] = $MultipleChoices->search($qnid,$sectionid); break;
					case 5: { 
						$questions[$vq]['mi'] = $MatchingItems->search($qnid,$sectionid);
						foreach ($questions[$vq]['mi'] as $vmi=>$mi) {
							$answers[$qnid][$vmi]['answer'] = $mi['answer'];
						}
						break;
					}
					case 6: $questions[$vq]['tf'] = $TrueFalses->search($qnid,$sectionid); break;
				}			
			}
			$tData['sections'][$r['id']]['qns'] = $questions;
		}
		
		$sanswers = $StudentQuizzes->getAnswers($quizid,$sid);
		foreach ($sanswers as $v=>$r) {
			$tData['sanswers'][$r['qid']][] = $r;
		}
	}
	
	$tData['sid'] = $sid;
	
	if ($tData['print']) $data['layout'] = 'layout_print.tpl.php';
	$data['content'] = loadTemplate('quiz_result.tpl.php',$tData);
}