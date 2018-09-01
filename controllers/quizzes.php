<?

if ( $action == 'index' ) {
	$tData['name'] = $_GET['name'];
	
	$tData['quizzes'] = $Quizzes->search(SCHOOLID);
	
	$data['content'] = loadTemplate('quizzes.tpl.php',$tData);
}

if ( $action == 'quiz_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['quiz'] = $Quizzes->getDetails($id);
	
	$action = 'quiz_add';
}

if ( $action == 'quiz_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$tData['cats'] = $Categories->search(SCHOOLID);
	$tData['scats'] = $Subcategories->search(SCHOOLID);
	
	if ($tData['quiz']) { 
		$tData['rawfromdate'] = fDate($tData['quiz']['startdate'],'Y-m-d'); 
		$tData['rawfromtime'] = fDate($tData['quiz']['startdate'],'H').':'.fDate($tData['quiz']['startdate'],'i').':00';
		$tData['rawtodate'] = fDate($tData['quiz']['enddate'],'Y-m-d');
		$tData['rawtotime'] = fDate($tData['quiz']['enddate'],'H').':'.fDate($tData['quiz']['enddate'],'i').':00';
	} else {
		$tData['rawfromdate'] = date('Y-m-d');
		$tData['rawfromtime'] = '00:00';
		$tData['rawtodate'] = date('Y-m-d');
		$tData['rawtotime'] = '02:00';
	}

	$tData['showmarks'][0]['name'] = 'After End Date';
	$tData['showmarks'][1]['name'] = 'After Marking';
	$tData['showmarks'][2]['name'] = 'Never';
	
	$data['content'] = loadTemplate('quiz_edit.tpl.php',$tData);
}

if ( $action == 'ajax_quiz_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);	
	
	$miniData = $_POST['quiz'];
	$miniData['startdate'] = $_POST['rawfromdate'].' '.$_POST['rawfromhour'].':'.$_POST['rawfrommin'];
	$miniData['enddate'] = $_POST['rawtodate'].' '.$_POST['rawtohour'].':'.$_POST['rawtomin'];
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
	
		$Quizzes->insert($miniData);
		
		$obj->msg='Test Added';
		$obj->status=1;
		$obj->redirect='?module=quizzes&action=quiz_add';
		$obj->mainredirect='?module=quizzes&action=index';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Quizzes->update($id,$miniData);
		
		$obj->msg='Test Updated';
		$obj->status=1;
		$obj->redirect='?module=quizzes&action=quiz_edit&id='.$id;
		$obj->mainredirect='?module=quizzes&action=index';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'quiz_upload_edit') {
	$id = $_GET['id'];
	
	$tData['quiz'] = $Quizzes->getDetails($id);
	$tData['qfiles'] = $QuizFiles->search($id);

	$data['content'] = loadTemplate('quiz_upload_edit.tpl.php',$tData);
}

if ( $action == 'quiz_upload_save' ) {
		
	$upload = $_FILES['upload'];
	$miniData = $_POST['qfile'];
	$miniData['createdby'] = USER_ID;
	
	$uploaddir = 'qfiles/';
	if ($upload['name']) {
		$extension = pathinfo($upload["name"], PATHINFO_EXTENSION);
		$filename = $miniData['quizid'].'-'.$upload['name'];
		
		move_uploaded_file($upload["tmp_name"], $uploaddir . '/' . $filename);
		$miniData['filepath'] = $filename;
	}
	
	$_SESSION['message'] = 'Test File Saved';
	$QuizFiles->insert($miniData);
	
	redirectBack();
}

if ( $action == 'quiz_upload_delete' ) {
	
	$id = $_GET['id'];
	$qfile = $QuizFiles->get($id);
	$QuizFiles->real_delete($id);
	
	unlink('qfiles/'.$qfile['filepath']);
	$_SESSION['message'] = 'Test file Deleted';
	redirectBack();
}

if ( $action == 'quiz_section_edit') {
	$id = $_GET['id'];
	
	$tData['quiz'] = $Quizzes->getDetails($id);
	$tData['sections'] = $QuizSections->search($id);
	
	$tData['types'] = $Types->search();

	$data['content'] = loadTemplate('quiz_section_edit.tpl.php',$tData);
}

if ($action == 'quiz_section_save') {
	$miniData = $_POST['qs'];
	$qno = $_POST['qno'];
	
	$sortno = $QuizSections->getSortNo($miniData['quizid']);
	$miniData['sortno'] = $sortno['sortno'];
	$QuizSections->insert($miniData);
	$qsid = $QuizSections->lastId();
	
	$qData['typeid'] = $miniData['typeid'];	
	$qData['quizid'] = $miniData['quizid'];	
	$qData['createdby'] = USER_ID;
	for ($i=0;$i<$qno;$i++) {
		$qData['question'] = 'Untitled';
		$qData['sortno'] = $i+1;
		$qData['marks'] = 0;
		$qData['sectionid'] = $qsid;
		$QuizQuestions->insert($qData);
	}
	
	$_SESSION['message'] = 'Test Section Created';
	redirectBack();
}

if ( $action == 'quiz_questions_edit') {
	$id = $_GET['id'];
	$qnid = $_GET['qnid'];
	$sectionid = $_GET['sectionid'];
	$tData['new'] = $_GET['new'];
	
	$tData['quiz'] = $Quizzes->getDetails($id);
	$tData['section'] = $QuizSections->getDetails($sectionid);
	$tData['questions'] = $QuizQuestions->search($id,$sectionid);
	if ($qnid) $tData['question'] = $QuizQuestions->get($qnid);
	
	$typeid = $tData['question']['typeid'];
	switch ($typeid) {
		case 1: $tData['fb'] = $FillBlanks->search($qnid); break;
		case 2: $tData['sa'] = $ShortAnswers->search($qnid); break;
		case 3: $tData['la'] = $LongAnswers->search($qnid); break;
		case 4: $tData['mc'] = $MultipleChoices->search($qnid); break;
		case 5: $tData['mi'] = $MatchingItems->search($qnid); break;
		case 6: $tData['tf'] = $TrueFalses->search($qnid); break;
	}
	
	$tData['types'] = $Types->search();

	$data['content'] = loadTemplate('quiz_questions_edit.tpl.php',$tData);
}

if ( $action == 'quiz_questions_save' ) {
	
	$id = intval($_POST['id']);	
	$miniData = $_POST['qn'];
	
	if (!$id) {
		$sortno = $QuizQuestions->getSortNo($miniData['quizid'],$miniData['sectionid']);
		$miniData['sortno'] = $sortno['sortno'];
		
		$QuizQuestions->insert($miniData);
		$id = $QuizQuestions->lastId();
	} else {
		$QuizQuestions->update($id,$miniData);
	}
	
	$dData['questionid'] = $id; //for deletion
	$qData['questionid'] = $id;
	$qData['createdby'] = USER_ID;
	
	if ($miniData['typeid'] == 1) { //fitb
		$FillBlanks->deleteWhere($dData);
		foreach ($_POST['fb'] as $r) {
			$qData['answer'] = $r;
			if ($r) $FillBlanks->insert($qData);
		}
	}
	if ($miniData['typeid'] == 2) { //sa
		$ShortAnswers->deleteWhere($dData);
		$qData['answer'] = $_POST['sa'];
		$ShortAnswers->insert($qData);
	}
	if ($miniData['typeid'] == 3) { //la
		$LongAnswers->deleteWhere($dData);
		$qData['answer'] = $_POST['la'];
		$LongAnswers->insert($qData);
	}
	if ($miniData['typeid'] == 4) { //mc
		$MultipleChoices->deleteWhere($dData);
		foreach ($_POST['mc'] as $v=>$r) {
			$qData['answer'] = $r;
			if ($v == $_POST['amc']) $qData['correct'] = 1; else $qData['correct'] = 0;
			if ($r) $MultipleChoices->insert($qData);
		}
	}
	if ($miniData['typeid'] == 5) { //mi
		$MatchingItems->deleteWhere($dData);
		foreach ($_POST['mil'] as $v=>$r) {
			$qData['qoption'] = $r;
			$qData['answer'] = $_POST['mir'][$v];
			if ($r && $_POST['mir'][$v]) $MatchingItems->insert($qData);
		}
	}
	if ($miniData['typeid'] == 6) { //tf
		$TrueFalses->deleteWhere($dData);
		$qData['answer'] = $_POST['tf'];
		$TrueFalses->insert($qData);
	}
	
	$_SESSION['message'] = 'Question Saved';
	redirectBack();
}

if ($action == 'quiz_question_delete') {
	$qData['quizid'] = $_GET['quizid'];
	$qData['id'] = $_GET['id'];
	$qData['sectionid'] = $_GET['sectionid'];
	
	$QuizQuestions->deleteWhere($qData);
	
	$questions = $QuizQuestions->search($qData['quizid'],$qData['sectionid']);
	foreach ($questions as $v=>$q) {
		$qnData['sortno'] = $v+1;
		$QuizQuestions->update($q['id'],$qnData);
	}
	
	$_SESSION['message'] = 'Question Deleted';
	redirect('quizzes','quiz_questions_edit','id='.$qData['quizid'].'&sectionid='.$qData['sectionid']);
}

if ($action == 'quiz_answers') {
	$quizid = $_GET['id'];
	$sid = $_GET['sid'];
	
	$tData['quiz'] = $Quizzes->get($quizid);
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
	
	// if ($sid) {
		// $squizzes = $StudentQuizzes->search($quizid,$sid);
		// $tData['squiz'] = $squizzes[0];
		// $answers = $StudentQuizzes->getAnswers($quizid,$sid);		
		// foreach ($answers as $v=>$r) {
			// $tData['answers'][$r['sortno']][$r['type']][$r['id']][] = $r;
		// }
	// }
	$tData['sid'] = $sid;
	
	$data['content'] = loadTemplate('quiz_answers.tpl.php',$tData);
}

if ($action == 'quiz_answers_save') {
	$sqData['marked'] = 1;
	$sData['studentid'] = $_POST['sid'];
	$sData['quizid'] = $_POST['quizid'];
	$StudentQuizzes->updateWhere($sData,$sqData);
	
	$marks = $_POST['marks'];
	foreach ($marks as $qaid=>$r){
		$qaData['marks'] = $r;
		$QuizAnswers->update($qaid,$qaData);
	}
	
	$sql = "update studentquizzes set marks = (select marks from (
			select sum(qa.marks) as marks from quizanswers as qa
			inner join studentquizzes as sq on sq.id = qa.squizid
			where sq.studentid = ".$_POST['sid']." and sq.quizid = ".$_POST['quizid']."
			) as x) where studentid = ".$_POST['sid']." and quizid = ".$_POST['quizid'];
			
	executeQuery($sql);
	
	//send email if quiz marks are shown after marking
	$quiz = $Quizzes->getDetails($_POST['quizid']);
	if ($quiz['showmarks'] == 'After Marking') { 
		$stud = $Students->getDetails('',$sData['studentid']);
		$emailBody = "Hello ".$stud['name'].", <br>
					The test ".$quiz['name']." has just ended on ".fDate($quiz['enddate'],'jS F Y h:i A')." <br>
					Visit <a href='#'>Website Link</a> to view your scores";
		// echo $emailBody.'<br>';
		if ($stud['email']) {
			// sendEmail($stud['email'], 'End of Test', '', $emailBody, 'fazleabbas@gmail.com', 'Test Website');
		}
	}
	
	$_SESSION['message'] = 'Marks Saved';
	redirectBack();
}

if ( $action == 'quiz_class_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['quiz'] = $Quizzes->getDetails($id);
	$tData['grades'] = $Grades->search(SCHOOLID);
	$tData['divisions'] = $Divisions->search(SCHOOLID);
	$tData['qclasses'] = $QuizClasses->search($id);
	
	$data['content'] = loadTemplate('quiz_class_edit.tpl.php',$tData);
}

if ( $action == 'ajax_quiz_class_save' ) {
	
	$obj = null;
	
	$miniData = $_POST['qclass'];
	$miniData['createdby'] = USER_ID;
	$QuizClasses->insert($miniData);
	
	$obj->msg='Test Classes Added';
	$obj->status=1;
	$obj->redirect='?module=quizzes&action=quiz_class_edit&id='.$miniData['quizid'];
	$obj->mainredirect='?module=quizzes&action=index';
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'ajax_quiz_class_remove' ) {
	
	$obj = null;
	
	$quizid = $_POST['id'];	
	$qcids = $_POST['qcid'];	
	foreach ($qcids as $qcid) { 
		$QuizClasses->real_delete($qcid);
	}
	
	$obj->msg='Test Classes Removed';
	$obj->status=1;
	$obj->redirect='?module=quizzes&action=quiz_class_edit&id='.$quizid;
	$obj->mainredirect='?module=quizzes&action=index';
	
	$response[]=$obj;
	$data['content'] = $response;
}