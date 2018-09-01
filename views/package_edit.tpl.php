<h3> Add Package </h3>
<form enctype="multipart/form-data" method="post" <?=VALIDATEFORM?> <?=windowOnSubmit('masters','package_save')?>>
	<?=insertHiddenInput('id',$package['id'])?>
	
	<?=insertTextInput('Name','package[name]',$package['name'],'firstfocus','Enter the package\'s name','text',1,'required||Name is required')?><br>
	
	<?=insertTextInput('Max Students','package[maxstd]',$package['maxstd'],'','Enter the maximum students','number',1,'required||Max students is required')?><br>
	
	<?=insertTextInput('Duration (days)','package[duration]',$package['duration'],'','Enter the package duration','number',1,'required||Duration is required')?><br>
	
	<?=insertTextInput('Price','package[price]',$package['price'],'','Enter the price','text',1,'required||Price is required')?><br>
	
	<?=insertSaveButton('Save');?>
</form>