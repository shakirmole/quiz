<h3> Add Subcategory </h3>
<form enctype="multipart/form-data" method="post" <?=VALIDATEFORM?> <?=windowOnSubmit('masters','subcategory_save')?>>
	<?=insertHiddenInput('id',$subcategory['id'])?>
	<?=insertHiddenInput('subcategory[schoolid]',SCHOOLID)?>
	
	<?=insertTextInput('Name','subcategory[name]',$subcategory['name'],'firstfocus','Enter the subcategory\'s name','text',1,'required||Name is required')?><br>
	
	<?=insertSaveButton('Save');?>
</form>