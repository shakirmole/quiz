<h3> Add Grade </h3>
<form enctype="multipart/form-data" method="post" <?=VALIDATEFORM?> <?=windowOnSubmit('masters','grade_save')?>>
	<?=insertHiddenInput('id',$grade['id'])?>
	
	<?=insertTextInput('Name','grade[name]',$grade['name'],'firstfocus','Enter the grade\'s name','text',1,'required||Name is required')?><br>
	
	<?=insertSaveButton('Save');?>
</form>