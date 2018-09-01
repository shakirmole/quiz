<h3> Add Category </h3>
<form enctype="multipart/form-data" method="post" <?=VALIDATEFORM?> <?=windowOnSubmit('masters','category_save')?>>
	<?=insertHiddenInput('id',$category['id'])?>
	<?=insertHiddenInput('category[schoolid]',SCHOOLID)?>
	
	<?=insertTextInput('Name','category[name]',$category['name'],'firstfocus','Enter the category\'s name','text',1,'required||Name is required')?><br>
	
	<?=insertSaveButton('Save');?>
</form>