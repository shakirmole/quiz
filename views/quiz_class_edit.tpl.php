<h3> <?=$quiz['name']?> - Test Classes </h3>
<form enctype="multipart/form-data" method="post" <?=VALIDATEFORM?> <?=windowOnSubmit('quizzes','quiz_class_save')?> >
	<?=insertHiddenInput('qclass[quizid]',$quiz['id'])?>
	
	<div class='grid'>
		<div class='row cells2'>
			<div class='cell'>
				<?=insertSelect('Grade','qclass[gradeid]','firstfocus','Select the grade',1,1,$grades,'name|id','id|'.$qclass['gradeid'])?><br>
			</div>
			<div class='cell'>
				<?=insertSelect('Division','qclass[divisionid]','','Select the division',1,1,$divisions,'name|id','id|'.$qclass['divisionid'])?><br>
			</div>
		</div>
	</div>

	<?=insertSaveButton('Save');?>
</form>

<br><hr>
<h4>Previous Additions</h4>
<form enctype="multipart/form-data" method="post" <?=VALIDATEFORM?> <?=windowOnSubmit('quizzes','quiz_class_remove')?> >
	<?=insertHiddenInput('id',$quiz['id'])?>
	<table class='table bordered border'>
		<thead>
			<tr>
				<th>No</th>
				<th>Class</th>
				<th>Remove</th>
			</tr>
		</thead>
		<tbody>
			<? foreach ($qclasses as $v=>$r) { ?>
			<tr>
				<td><?=$v+1?></td>
				<td><?=$r['grade']?> <?=$r['division']?></td>
				<td>
					<?=insertCheckboxInput('','qcid[]',$r['id'],'','The class','normal','id|x')?>
				</td>
			</tr>
			<? } ?>
		</tbody>
	</table>
	
	<?=insertSaveButton('Remove');?>
</form>