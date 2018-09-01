<h3> School Packages </h3>
<form enctype="multipart/form-data" method="post" <?=VALIDATEFORM?> <?=windowOnSubmit('masters','school_package_save')?>>
	<?=insertHiddenInput('schoolid',$school['id'])?>
	
	<?=insertTextInput('School','',$school['name'],'','School Name','text',1,'','readonly')?><br>
	
	<?=insertTextInput('Current Package','',$school['package'].' ('.fDate($school['enddate']).')','','Package Details','text',1,'','readonly')?><br>
	
	<?=insertSelect('New Package','packageid','packageid','Select the new package',1,'',$packages,'name|id','id|id')?><br>
	
	<?=insertSaveButton('Save')?>
</form>