<?

if ( $action == 'students' ) {
	$tData['name'] = $_GET['name'];
	
	$tData['users'] = $Students->search(SCHOOLID,$tData['name'],30);
	$tData['stcount'] = count($Students->search(SCHOOLID));
	
	$data['content'] = loadTemplate('students.tpl.php',$tData);
}

if ( $action == 'student_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['student'] = $Students->getDetails($id);
	
	$action = 'student_add';
}

if ( $action == 'student_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$tData['usernames'] = $Users->getUsernames($tData['student']['userid']);
	$tData['stcount'] = count($Students->search(SCHOOLID));
	$tData['divisions'] = $Divisions->search(SCHOOLID);
	$tData['grades'] = $Grades->search(SCHOOLID);
	
	$data['content'] = loadTemplate('student_edit.tpl.php',$tData);
}

if ( $action == 'ajax_student_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$userid = intval($_POST['userid']);
	
	$miniData = $_POST['student'];
	$uData = $_POST['user'];
	
	if (!$uData['status']) $uData['status'] = 0;
	if ($uData['password']) $uData['password'] = hash('sha256',$uData['password']);
	else unset($uData['password']);
	$uData['name'] = $miniData['name'];
	
	$utype = $UserTypes->getDetails('student');
	$uData['utypeid'] = $utype['id'];
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
	
		$Users->insert($uData);
		$miniData['userid'] = $Users->lastId();
		
		$Students->insert($miniData);
		
		$subject = 'Student Registration';
		$from = 'fazleabbas@gmail.com';
		$fromName = 'Online Test System';
		$school = $Schools->get(SCHOOLID);
		$body_html ='<br /><br />
					Welcome ' . $miniData['name'] .' to the online Test System. You have been successfully registered by '.$school['name'].'!
					<br /><br />
					Please click on this link to access the website.
					<a href="http://test.com/">Online Test System</a>
					<br /><br />
					Thank you.';
					
		if ($miniData['email']) sendEmail($miniData['email'], $subject, $body_text, $body_html, $from, $fromName); //email
		
		$obj->msg='Student Added';
		$obj->status=1;
		$obj->redirect='?module=users&action=student_add';
		$obj->mainredirect='?module=users&action=students';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Students->update($id,$miniData);
		$Users->update($userid,$uData);
		
		$obj->msg='Student Updated';
		$obj->status=1;
		$obj->redirect='?module=users&action=student_edit&id='.$id;
		$obj->mainredirect='?module=users&action=students';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'download_template' ) {
	
	$fname = 'template.csv';
	
	$tData['output'] = "Name, Mobile, Email, Regno, Username, \n";
	
	$tData['fname'] = $fname;
	
	$data['layout'] = 'layout_blank.tpl.php';
	$data['content'] = loadTemplate('template.tpl.php', $tData);
}

if ( $action == 'import_students' ) {
	
	$stcount = count($Students->search(SCHOOLID));
	if ($stcount >= $_SESSION['package']['maxstd']) {
		$_SESSION['error'] = 'Max Students Reached';
		redirect('users','students');
	}
	
	$data['content'] = loadTemplate('import_students.tpl.php',$tData);
}

if ( $action == 'import_students_file' ) {
	
	if (!$_FILES['upload']['name']) {	
		$_SESSION['error'] = 'No File was Uploaded';
		redirectBack();
	} else {
		$tData['usernames'] = $Users->getUsernames($tData['student']['userid']);
	
		ini_set('auto_detect_line_endings',TRUE);
		$file = $_FILES['upload']['tmp_name']; 
		$handle = fopen($file,"r");
		
		$i=0;
		do { 
			if ($data[0] && $data[0] != 'Name') { 
				foreach ($data as $v=>$r) {
					$name = strtolower(trim($names[$v]));
					if ($name != '') $tData['students'][$i][$name] = $data[$v];
				}
				$i++;
			}
			else if ($data[0] == 'Name') {
				$names = $data;
			}
		} while ($data = fgetcsv($handle,1000,",","'")); 
		
		ini_set('auto_detect_line_endings',FALSE);
		
		$tData['grades'] = $Grades->search(SCHOOLID);
		$tData['divisions'] = $Divisions->search(SCHOOLID);
		
		$_SESSION['message'] = 'Please recheck before Importing';
		$data['content'] = loadTemplate('import_students.tpl.php',$tData);
	}
}

if ($action == 'import_students_save') {

	$names = $_POST['name'];
	$mobiles = $_POST['mobile'];
	$emails = $_POST['email'];
	$regnos = $_POST['regno'];
	$gradeids = $_POST['gradeid'];
	$divisionids = $_POST['divisionid'];
	$usernames = $_POST['username'];
	
	$uData['createdby'] = USER_ID;
	$sData['createdby'] = USER_ID;
	$utype = $UserTypes->getDetails('student');
	$uData['utypeid'] = $utype['id'];
	$uData['status'] = 1;
	$uData['password'] = hash('sha256','123');
	
	foreach ($names as $v=>$r) {
		$uData['name'] = $r;
		$uData['username'] = $usernames[$v];
		$Users->insert($uData);
		$sData['userid'] = $Users->lastId();
		
		$sData['name'] = $r;
		$sData['mobile'] = $mobiles[$v];
		$sData['email'] = $emails[$v];
		$sData['regno'] = $regnos[$v];
		$sData['gradeid'] = $gradeids[$v];
		$sData['divisionid'] = $divisionids[$v];
		$sData['schoolid'] = SCHOOLID;
		
		$Students->insert($sData);
	}
	
	$_SESSION['message'] = 'Students Imported';
	redirect('users','import_students');
}

if ( $action == 'user_rights_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$tData['id'] = $_GET['id'];
	$rights = $UserRights->getUserRights($tData['id']);
	foreach ($rights as $r) {
		if ($r['sname']) $tData['rights'][$r['mname']]['subs'][$r['sname']] = $r;
		$tData['rights'][$r['mname']]['menuid'] = $r['menuid'];
		if ($r['umid']) $tData['rights'][$r['mname']]['checked'] = 'checked';
	}
	
	$data['content'] = loadTemplate('user_rights_edit.tpl.php',$tData);
}

if ( $action == 'staffs' ) {
	
	$tData['name'] = $_GET['name'];
	
	$tData['users'] = $Staffs->search($tData['name']);
	
	$data['content'] = loadTemplate('staffs.tpl.php',$tData);
}

if ( $action == 'staff_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['staff'] = $Staffs->getDetails($id);	
	
	$action = 'staff_add';
}

if ( $action == 'staff_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$tData['usernames'] = $Users->getUsernames($tData['staff']['userid']);
	$tData['schools'] = $Schools->search();
	
	$data['content'] = loadTemplate('staff_edit.tpl.php',$tData);
}

if ( $action == 'ajax_staff_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$userid = intval($_POST['userid']);
	$miniData = $_POST['staff'];
	$uData = $_POST['user'];
	
	if (!$uData['status']) $uData['status'] = 0;
	if ($uData['password']) $uData['password'] = hash('sha256',$uData['password']);
	else unset($uData['password']);
	$uData['name'] = $miniData['name'];
	
	$utype = $UserTypes->getDetails('staff');
	$uData['utypeid'] = $utype['id'];
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
	
		$Users->insert($uData);
		$miniData['userid'] = $Users->lastId();
		
		$Staffs->insert($miniData);
		
		$obj->msg='Staff Added';
		$obj->status=1;
		$obj->redirect='?module=users&action=staff_add';
		$obj->mainredirect='?module=users&action=staffs';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Staffs->update($id,$miniData);
		$Users->update($userid,$uData);
		
		$obj->msg='Staff Updated';
		$obj->status=1;
		$obj->redirect='?module=users&action=staff_edit&id='.$id;
		$obj->mainredirect='?module=users&action=staffs';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'admins' ) {
	
	$tData['name'] = $_GET['name'];
	
	$tData['users'] = $Admins->search($tData['name']);
	
	$data['content'] = loadTemplate('admins.tpl.php',$tData);
}

if ( $action == 'admin_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['admin'] = $Admins->getDetails($id);	
	
	$action = 'admin_add';
}

if ( $action == 'admin_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$tData['usernames'] = $Users->getUsernames($tData['admin']['userid']);
	
	$data['content'] = loadTemplate('admin_edit.tpl.php',$tData);
}

if ( $action == 'ajax_admin_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$userid = intval($_POST['userid']);
	$miniData = $_POST['admin'];
	$uData = $_POST['user'];
	
	if (!$uData['status']) $uData['status'] = 0;
	if ($uData['password']) $uData['password'] = hash('sha256',$uData['password']);
	else unset($uData['password']);
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
	
		$Users->insert($uData);
		$miniData['userid'] = $Users->lastId();
		
		$Admins->insert($miniData);
		
		$obj->msg='Admin Added';
		$obj->status=1;
		$obj->redirect='?module=users&action=admin_add';
		$obj->mainredirect='?module=users&action=admins';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Admins->update($id,$miniData);
		$Users->update($userid,$uData);
		
		$obj->msg='Admin Updated';
		$obj->status=1;
		$obj->redirect='?module=users&action=admin_edit&id='.$id;
		$obj->mainredirect='?module=users&action=admins';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'ajax_user_rights_save' ) {
	
	$obj = null;
	
	$rights = $_POST['rights'];
	$miniData['userid'] = intval($_POST['id']);
	$UserRights->deleteWhere($miniData);
	
	$miniData['createdby'] = USER_ID;

	foreach ($rights as $menuid=>$sids) {
		$miniData['menuid'] = $menuid;
		foreach ($sids as $sid=>$dum) {
			$miniData['submenuid'] = $sid;
			$UserRights->insert($miniData);
		}
	}
	
	$obj->msg='User Rights Modified';
	$obj->status=1;
	$obj->redirect='?module=users&action=user_rights_edit&id='.$miniData['userid'];
	$obj->mainredirect='?module=users&action=index';
					
	$response[]=$obj;
	$data['content'] = $response;
}
