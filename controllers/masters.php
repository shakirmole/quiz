<?

if ( $action == 'schools' ) {
	
	$tData['name'] = $_GET['name'];
	
	$tData['schools'] = $Schools->search($tData['name']);
	
	$data['content'] = loadTemplate('schools.tpl.php',$tData);
}

if ( $action == 'school_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['school'] = $Schools->get($id);
	
	$action = 'school_add';
}

if ( $action == 'school_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$data['content'] = loadTemplate('school_edit.tpl.php',$tData);
}

if ( $action == 'ajax_school_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$miniData = $_POST['school'];
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		$Schools->insert($miniData);
		$spData['schoolid'] = $Schools->lastId();
		
		$settings = $Settings->get(1);
		$spData['packageid'] = 0;
		$spData['maxstd'] = $settings['dmaxstd'];
		$spData['duration'] = $settings['dduration'];
		$spData['price'] = 0;
		$spData['startdate'] = NOW;
		$spData['enddate'] = date('Y-m-d H:i:s',strtotime('+'.$settings['dduration'].' days'));
		$spData['status'] = 1;
		$spData['createdby'] = USER_ID;
		$spData['doc'] = NOW;
		$SchoolPackages->insert($spData);
		
		$obj->msg='School Added';
		$obj->status=1;
		$obj->redirect='?module=masters&action=school_add';
		$obj->mainredirect='?module=masters&action=schools';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Schools->update($id,$miniData);
		
		$obj->msg='School Updated';
		$obj->status=1;
		$obj->redirect='?module=masters&action=school_edit&id='.$id;
		$obj->mainredirect='?module=masters&action=schools';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'categories' ) {
	
	$tData['name'] = $_GET['name'];
	
	$tData['categories'] = $Categories->search(SCHOOLID);
	
	$data['content'] = loadTemplate('categories.tpl.php',$tData);
}

if ( $action == 'category_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['category'] = $Categories->get($id);
	
	$action = 'category_add';
}

if ( $action == 'category_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$data['content'] = loadTemplate('category_edit.tpl.php',$tData);
}

if ( $action == 'ajax_category_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$miniData = $_POST['category'];
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		$Categories->insert($miniData);
		
		$obj->msg='Category Added';
		$obj->status=1;
		$obj->redirect='?module=masters&action=category_add';
		$obj->mainredirect='?module=masters&action=categories';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Categories->update($id,$miniData);
		
		$obj->msg='Category Updated';
		$obj->status=1;
		$obj->redirect='?module=masters&action=category_edit&id='.$id;
		$obj->mainredirect='?module=masters&action=categories';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'subcategories' ) {
	
	$tData['name'] = $_GET['name'];
	
	$tData['subcategories'] = $Subcategories->search(SCHOOLID);
	
	$data['content'] = loadTemplate('subcategories.tpl.php',$tData);
}

if ( $action == 'subcategory_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['subcategory'] = $Subcategories->get($id);
	
	$action = 'subcategory_add';
}

if ( $action == 'subcategory_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$data['content'] = loadTemplate('subcategory_edit.tpl.php',$tData);
}

if ( $action == 'ajax_subcategory_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$miniData = $_POST['subcategory'];
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		$Subcategories->insert($miniData);
		
		$obj->msg='Subcategory Added';
		$obj->status=1;
		$obj->redirect='?module=masters&action=subcategory_add';
		$obj->mainredirect='?module=masters&action=subcategories';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Subcategories->update($id,$miniData);
		
		$obj->msg='Subcategory Updated';
		$obj->status=1;
		$obj->redirect='?module=masters&action=subcategory_edit&id='.$id;
		$obj->mainredirect='?module=masters&action=subcategories';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'packages' ) {
	
	$tData['name'] = $_GET['name'];
	
	$tData['packages'] = $Packages->search($tData['name']);
	
	$data['content'] = loadTemplate('packages.tpl.php',$tData);
}

if ( $action == 'package_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['package'] = $Packages->get($id);
	
	$action = 'package_add';
}

if ( $action == 'package_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$data['content'] = loadTemplate('package_edit.tpl.php',$tData);
}

if ( $action == 'ajax_package_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$miniData = $_POST['package'];
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		$Packages->insert($miniData);
		
		$obj->msg='Package Added';
		$obj->status=1;
		$obj->redirect='?module=masters&action=package_add';
		$obj->mainredirect='?module=masters&action=packages';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Packages->update($id,$miniData);
		
		$obj->msg='Package Updated';
		$obj->status=1;
		$obj->redirect='?module=masters&action=package_edit&id='.$id;
		$obj->mainredirect='?module=masters&action=packages';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'school_package_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	$schoolid = $_GET['id'];
	
	$tData['packages'] = $Packages->search();
	$tData['school'] = $Schools->getDetails($schoolid);
	
	$data['content'] = loadTemplate('school_package_edit.tpl.php',$tData);
}

if ( $action == 'ajax_school_package_save' ) {
	
	$obj = null;
	
	$schoolid = intval($_POST['schoolid']);
	$packageid = intval($_POST['packageid']);
	
	$sql = "update schoolpackages set status = 0 where schoolid = ".$schoolid;
	executeQuery($sql);
	
	$package = $Packages->get($packageid);
	
	$spData['schoolid'] = $schoolid;
	$spData['packageid'] = $packageid;
	$spData['maxstd'] = $package['maxstd'];
	$spData['duration'] = $package['duration'];
	$spData['price'] = $package['price'];
	$spData['startdate'] = NOW;
	$spData['enddate'] = date('Y-m-d H:i:s',strtotime('+'.$package['duration'].' days'));
	$spData['status'] = 1;
	$spData['createdby'] = USER_ID;
	$spData['doc'] = NOW;
	$SchoolPackages->insert($spData);
	
	$obj->msg='Package Added';
	$obj->status=1;
	$obj->redirect='?module=masters&action=school_package_edit&id='.$schoolid;
	$obj->mainredirect='?module=masters&action=schools';
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'grades' ) {

	$tData['name'] = $_GET['name'];
	
	$tData['grades'] = $Grades->search(SCHOOLID);
	
	$data['content'] = loadTemplate('grades.tpl.php',$tData);
}

if ( $action == 'grade_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['grade'] = $Grades->get($id);
	
	$action = 'grade_add';
}

if ( $action == 'grade_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$data['content'] = loadTemplate('grade_edit.tpl.php',$tData);
}

if ( $action == 'ajax_grade_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$miniData = $_POST['grade'];
	$miniData['schoolid'] = SCHOOLID;
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		$Grades->insert($miniData);
		
		$obj->msg='Grade Added';
		$obj->status=1;
		$obj->redirect='?module=masters&action=grade_add';
		$obj->mainredirect='?module=masters&action=grades';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Grades->update($id,$miniData);
		
		$obj->msg='Grade Updated';
		$obj->status=1;
		$obj->redirect='?module=masters&action=grade_edit&id='.$id;
		$obj->mainredirect='?module=masters&action=grades';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'divisions' ) {
	
	$tData['name'] = $_GET['name'];
	
	$tData['divisions'] = $Divisions->search(SCHOOLID);
	
	$data['content'] = loadTemplate('divisions.tpl.php',$tData);
}

if ( $action == 'division_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['division'] = $Divisions->get($id);
	
	$action = 'division_add';
}

if ( $action == 'division_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$data['content'] = loadTemplate('division_edit.tpl.php',$tData);
}

if ( $action == 'ajax_division_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$miniData = $_POST['division'];
	$miniData['schoolid'] = SCHOOLID;
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		$Divisions->insert($miniData);
		
		$obj->msg='Division Added';
		$obj->status=1;
		$obj->redirect='?module=masters&action=division_add';
		$obj->mainredirect='?module=masters&action=divisions';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Divisions->update($id,$miniData);
		
		$obj->msg='Division Updated';
		$obj->status=1;
		$obj->redirect='?module=masters&action=division_edit&id='.$id;
		$obj->mainredirect='?module=masters&action=divisions';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}