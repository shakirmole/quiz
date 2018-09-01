<h3> <?=$quiz['name']?> - Test Files </h3>
<form enctype="multipart/form-data" <?=VALIDATEFORM?> action="?module=quizzes&action=quiz_upload_save" method="post">	
	<?=insertHiddenInput('qfile[quizid]',$quiz['id'])?>
	
	<?=insertTextInput('File Name','qfile[name]',$qfile['name'],'','Enter the file name','text',1,'required||File name is required')?><br>
	
	<?=insertFileInput('Upload','upload','','','Upload the file',1)?>
	
	<br>
	
	<?=insertSaveButton('Save')?>

</form>

<br><br>
<h3>Uploaded Files</h3>
<table class='table bordered border'>
	<thead>
		<tr>
			<th>File Name</th>
			<th>Open</th>
		</tr>
	</thead>
	<tbody>
		<? foreach ($qfiles as $v=>$r) { ?>
		<tr>
			<td><?=$r['name']?> &nbsp; <a href='?module=quizzes&action=quiz_upload_delete&id=<?=$r['id']?>'><span class='pointer tag bg-red fg-white'>Delete</span></a></td>
			<td>
				<? if ($r['filepath']) $path = 'qfiles/'.$r['filepath']; ?>
				<a href="<?=$path?>" target='_blank'>Preview</a>
			</td>
		</tr>
		<? } ?>
	</tbody>
</table>