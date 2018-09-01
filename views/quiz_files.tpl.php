<h3><?=$quiz['name']?> - Test Files</h3>
<table class="table bordered border hovered" border="0" data-role="">
	<thead>
		<tr>
			<th>&nbsp;</th>
			<th>No.</th>
			<th>Name</th>
		</tr>
	</thead>
	<tbody>
<?php foreach($qfiles as $id=>$R) { ?>
	<tr>
		<td nowrap style="width:60px">
			<a href="qfiles/<?=$R['filepath']?>" target='_blank'><span class='mif-download mif-2x'></span></a>
		</td>
		<td class="" style="width:80px"><?=$id+1?></td>
		<td><?=$R['name']?></td>
	</tr>
<?php } ?>
	</tbody>

</table>