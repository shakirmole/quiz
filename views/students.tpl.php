<h2> Students </h2>

<div>
	<? if ($stcount < $_SESSION['package']['maxstd']) { ?>
	<span class="place-right"> <a class="button" href="#" onclick="openWindow('?module=users&action=student_add')"> Add </a> </span>
	<span class="place-right"> <a class="button" href="?module=users&action=import_students"> Upload </a> </span>
	<? } else { ?>
	<a class='place-right button' href=''>Max Students Reached</a>
	<? } ?>
	<form method="GET" class='n' <?=VALIDATEFORM?>>
		<input type="hidden" name="module" value="users">
		<input type="hidden" name="action" value="students">
		<label>Name</label> 
		<div class="input-control text">
			<input type="text" name="name" value="<?=$name?>">
		</div>
		<?=insertSaveButton('Search')?>
	</form>
</div>

<div>
	<table class="table bordered border hovered" border="0" data-role="dataTable">
		<thead>
			<tr>
				<th>&nbsp;</th>
				<th>No.</th>
				<th>Name</th>
				<th>Mobile</th>
				<th>Email</th>
				<th>Reg No</th>
				<th>Class</th>
				<th>Username</th>
			</tr>
		</thead>
		<tbody>
	<?php foreach($users as $id=>$R) { ?>
		<tr>
			<td nowrap style="width:80px">
				<a href="#" onclick="openWindow('?module=users&action=student_edit&id=<?=$R['id']?>')"><span class="mif-pencil"></a>
				<? if ($R['admin']) { ?><a href="#" onclick="openWindow('?module=users&action=user_rights_edit&id=<?=$R['id']?>')"><span class="mif-user"></a> <? } ?>
			</td>
			<td class="fg-white bg-<?=($R['status'])?'green':'crimson';?>" style="width:80px"><?=$id+1?></td>
			<td><?=$R['name']?></td>
			<td><?=$R['mobile']?></td>
			<td><?=$R['email']?></td>
			<td><?=$R['regno']?></td>
			<td><?=$R['grade']?> <?=$R['division']?></td>
			<td><?=$R['username']?></td>
		</tr>
	<?php } ?>
		</tbody>

	</table>
</div>