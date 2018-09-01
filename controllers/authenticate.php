<?php

	$data['layout'] = 'layout_login.tpl.php';

	if ( $action == 'login' ) {
		$tData['username'] = $_GET['username'];
	
		redirect('home','index');
		// $data['content'] = loadTemplate('admin/login.tpl.php',$tData);
	}
	
	if ( $action == 'dologin' ) {
		$d['username'] = cleanInput($_POST['username']);
		$d['password'] = cleanInput($_POST['password']);

		if ( empty($d['username']) or empty($d['password']) ) {
				$_SESSION['error'] = 'Invalid Username/Password';
				$data['content'] = loadTemplate('admin/login.tpl.php', $d);
				redirect('authenticate','login');
		} else {
			
			$d['password'] = hash('sha256', $d['password']);
			$userInfo = $Users->find($d);
			
			if ( empty($userInfo) or $userInfo[0]['password'] != $d['password'] ) {
				$_SESSION['error'] = 'Invalid Username/Password';
				$data['content'] = loadTemplate('admin/login.tpl.php', $d);
				
				redirect('authenticate','login','username='.$d['username']);
			} else {
			
				if ($userInfo[0]['status']) {
					$person = $Users->getPerson($userInfo[0]['id']);
					$sp = $SchoolPackages->search($person['schoolid'],1);
					$sp = $sp[0];
					
					if ($person['type'] == 'staff') { //check package expiry for staffs
						if (strtotime($sp['enddate']) < strtotime(NOW)) {
							$_SESSION['error'] = 'The school account has expired';
						
							redirect('home','expired');
						}
						$_SESSION['package'] = $sp;
					}
					
					if ($person['type'] == 'student' ) { //check if within student limit
						$stud = $Students->validateStudent($person['schoolid'],$sp['maxstd'],$person['userid']);
						if (!$stud) { 
							$_SESSION['error'] = 'Package Error. Please contact school.';
						
							redirect('home','index');
						}
						$studDet = $Students->getDetails('',$stud['id']);
					}
					
					$_SESSION['member'] = $userInfo[0];
					$_SESSION['member']['name'] = $person['name'];
					$_SESSION['member']['type'] = $person['type'];
					$_SESSION['member']['schoolid'] = $person['schoolid'];
					if ($person['type'] == 'student' ) {
						$_SESSION['member']['class'] = $studDet['grade'].' '.$studDet['division'];
					}
					
					$_SESSION['message'] = 'Successfully Logged In';
					
					redirect('home','index');
				} else {
					$_SESSION['error'] = 'Your account has been deactivated';
					
					redirectBack();
				}
			}
		}
	}
	
	if ( $action == 'logout' ) {
	
		session_destroy();
		$_SESSION['message'] = 'You have successfully logged out';
		redirect('home','index');
	}
?>