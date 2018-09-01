<?

if ( $action == 'index' ) {
		
	if (!$_SESSION['member']) $tData['authenticate'] = loadTemplate('authenticate.tpl.php');
	
	if ($_SESSION['member']['type'] == 'admin') {
		$tData['schools'] = $Schools->search();
	}
	if ($_SESSION['member']['type'] == 'staff') {
		$students = $Students->search(SCHOOLID);
	
		foreach ($students as $v=>$r) {
			$tData['students'][$r['gradeid']][$r['divisionid']][] = $r;
		}
		$tData['grades'] = $Grades->search(SCHOOLID);
		$tData['divs'] = $Divisions->search(SCHOOLID);
		
		$tData['quizzes'] = $quizzes = $Quizzes->search(SCHOOLID);
	}
	if ($_SESSION['member']['type'] == 'student') {
		$tData['student'] = $Students->getDetails('',USER_ID);
	}
		
	$data['content'] = loadTemplate('home.tpl.php',$tData);
}

if ( $action == 'expired' ) {
		
	if (!$_SESSION['member']) $tData['authenticate'] = loadTemplate('authenticate.tpl.php');	
	$tData['packages'] = $Packages->search();
	$tData['settings'] = $Settings->get(1);
		
	$data['content'] = loadTemplate('expired.tpl.php',$tData);
}


if ($action == 'import' ) {
	
	$data['content'] = loadTemplate('import.tpl.php',$tData);
}

if ($action == 'import_data') {	
	if ($_FILES['upload']['tmp_name']) {
		$qrs = file_get_contents($_FILES['upload']['tmp_name']);
		executeQueryi($qrs);
		
		$_SESSION['message'] = 'Data Imported';
	} else {
	
		$_SESSION['error'] = 'Data Failed to Upload';
	}
	redirectBack();
}

if ($action == 'auto_start_email' ) {
	$data['layout'] = 'layout_blank.tpl.php';
	
	$quizzes = $Quizzes->search(0,'now');
	foreach ($quizzes as $q) {
		$students = $QuizClasses->getStudents($q['id']); //all eligible students sent email
		foreach ($students as $s) {
			$emailBody = "Hello ".$s['name'].", <br>
							The test ".$q['name']." has just begun and will go on until ".fDate($q['enddate'],'jS F Y h:i A')." <br>
							Visit <a href='#'>Website Link</a> to attempt the test";
			// echo $emailBody.'<br>';
			if ($s['email']) {
				// sendEmail($s['email'], 'Start of Test', '', $emailBody, 'fazleabbas@gmail.com', 'Test Website');
			}
		}
	}
}

if ($action == 'auto_end_email' ) {
	$data['layout'] = 'layout_blank.tpl.php';
	
	$quizzes = $Quizzes->search(0,'endnow');
	foreach ($quizzes as $q) {
		if ($q['showmarks'] == 'After End Date') { //all students who completed sent email
			$students = $StudentQuizzes->search($q['id']);
			foreach ($students as $s) {
				$emailBody = "Hello ".$s['name'].", <br>
							The test ".$q['name']." has just ended on ".fDate($q['enddate'],'jS F Y h:i A')." <br>
							Visit <a href='#'>Website Link</a> to view your scores";
				// echo $emailBody.'<br>';
				if ($s['email']) {
					// sendEmail($s['email'], 'End of Test', '', $emailBody, 'fazleabbas@gmail.com', 'Test Website');
				}
			}
		}
	}
}