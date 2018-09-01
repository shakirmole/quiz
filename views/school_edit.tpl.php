<h3> Add School </h3>
<form enctype="multipart/form-data" method="post" <?=VALIDATEFORM?> <?=windowOnSubmit('masters','school_save')?>>
	<?=insertHiddenInput('id',$school['id'])?>
	
	<?=insertTextInput('Name','school[name]',$school['name'],'firstfocus','Enter the school\'s name','text',1,'required||Name is required')?><br>
	
	<?=insertSaveButton('Save');?>
</form>