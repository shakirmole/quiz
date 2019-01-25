<h2> Tests </h2>

<div>
	<span class="place-right"> <a class="button" href="#" onclick="openWindow('?module=quizzes&action=quiz_add')"> Add </a> </span>
	<span class="place-right"> <a class="button" style='margin-right:5px' href="?module=quizzes&action=template_quiz_add"> Use Template </a> </span>
	<form method="GET" class='no-visible' <?=VALIDATEFORM?>>
		<input type="hidden" name="module" value="quizzes">
		<input type="hidden" name="action" value="index">
		<label>Name</label> 
		<div class="input-control text">
			<input type="text" name="name" value="<?=$name?>">
		</div
		<input type="submit" value="Search">
	</form>
</div>

<div>
	<table class="table bordered border hovered" border="0" data-role="">
		<thead>
			<tr>
				<th>&nbsp;</th>
				<th>No.</th>
				<th>Name</th>
				<th>Template</th>
				<th>Category</th>
				<th>Subcategory</th>
				<th>Questions</th>
				<th>Marks</th>
				<th>Test Duration</th>
			</tr>
		</thead>
		<tbody>
	<?php foreach($quizzes as $id=>$R) { ?>
		<tr>
			<td nowrap style="width:140px">
				<a href="#" onclick="openWindow('?module=quizzes&action=quiz_edit&id=<?=$R['id']?>')" title='Edit Details'><span class="mif-pencil"></span></a>
				<? if (time() < strtotime($R['startdate'])) { ?>
				<a href="?module=quizzes&action=quiz_section_edit&id=<?=$R['id']?>" title='Formulate Questions'><span class="mif-question"></span></a>
				<? } ?>
				<? if (time() > strtotime($R['startdate'])) { ?>
				<a href="?module=quizzes&action=quiz_answers&id=<?=$R['id']?>" title='Mark Papers'><span class="mif-clipboard"></span></a>
				<? } ?>
				<a href="?module=quizzes&action=quiz_upload_edit&id=<?=$R['id']?>" title='Upload Files'><span class="mif-file-upload"></span></a>
				<a href="#" onclick="openWindow('?module=quizzes&action=quiz_class_edit&id=<?=$R['id']?>')" title='Modify Classes'><span class="mif-school"></span></a> 
				<a href="?module=quizzes&action=quiz_print&id=<?=$R['id']?>" title='Print Quiz' target="_blank"><span class="mif-printer"></span></a>
			</td>
			<td style="width:80px"><?=$id+1?></td>
			<td><?=$R['name']?></td>
			<td><?=$R['parentquiz']?></td>
			<td><?=$R['cat']?></td>
			<td><?=$R['scat']?></td>
			<td><?=$R['qns']+0?></td>
			<td><?=$R['marks']+0?></td>
			<td><?=fDate($R['startdate'],'jS M h:i A')?> - <?=fDate($R['enddate'],'h:i A')?></td>
		</tr>
	<?php } ?>
		</tbody>

	</table>
</div>

<script>
	$( function() {
		$('.table').DataTable( {
			"order": [[ 1, "asc"]]
		})
	})
</script>