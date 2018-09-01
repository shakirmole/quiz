<h2> Schools </h2>

<div>
	<span class="place-right"> <a class="button" href="#" onclick="openWindow('?module=masters&action=school_add')"> Add </a> </span>
	<form method="GET" class='no-visible' <?=VALIDATEFORM?>>
		<input type="hidden" name="module" value="masters">
		<input type="hidden" name="action" value="schools">
		<label>Name</label> 
		<div class="input-control text">
			<input type="text" name="name" value="<?=$name?>">
		</div
		<input type="submit" value="Search">
	</form>
</div>

<div>
	<table class="table bordered border hovered" border="0" data-role="dataTable">
		<thead>
			<tr>
				<th>&nbsp;</th>
				<th>No.</th>
				<th>Name</th>
				<th>Current Package</th>
				<th>Expiring On</th>
				<th>Logo</th>
			</tr>
		</thead>
		<tbody>
	<?php foreach($schools as $id=>$R) { ?>
		<tr>
			<td nowrap style="width:80px">
				<a href="#" onclick="openWindow('?module=masters&action=school_edit&id=<?=$R['id']?>')"><span class="mif-pencil"></a>
				<a href="#" onclick="openWindow('?module=masters&action=school_package_edit&id=<?=$R['id']?>')"><span class="mif-gift"></a>
			</td>
			<td style="width:80px"><?=$id+1?></td>
			<td><?=$R['name']?></td>
			<td><?=$R['package']?></td>
			<td><?=fDate($R['enddate'])?></td>
			<td><?=($R['logo'])?"<a href='img/".$R['logo']."' target='_blank'><img style='width:80px' src='img/".$R['logo']."'></a>":'No Logo';?></td>
		</tr>
	<?php } ?>
		</tbody>

	</table>
</div>