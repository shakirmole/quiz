<h3> Add Division </h3>
<form enctype="multipart/form-data" method="post" <?=VALIDATEFORM?> <?=windowOnSubmit('masters','division_save')?>>
	<?=insertHiddenInput('id',$division['id'])?>
	
	<?=insertTextInput('Name','division[name]',$division['name'],'firstfocus','Enter the division\'s name','text',1,'required||Name is required')?><br>
	
	<?=insertSaveButton('Save');?>
</form>