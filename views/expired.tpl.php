<div class='grid'>
	<div class='row cells5'>
		<div class='cell colspan4'>
			<h3>Your account has expired</h3>
			
			<p> Text to display Text to display Text to display Text to display Text to display Text to display Text to display Text to display</p>
			
			Please review our packages below <br>
			
			<table class='table bordered border hovered' style='width:50%'>
				<thead>
					<tr>
						<th>Package</th>
						<th>Duration</th>
						<th>Students</th>
						<th>Price</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Default</td>
						<td><?=$settings['dduration']?> days</td>
						<td class='align-center'><?=$settings['dmaxstd']?></td>
						<td class='align-right'>FREE</td>
					</tr>
					<? foreach ($packages as $p) { ?>
					<tr>
						<td><?=$p['name']?></td>
						<td><?=$p['duration']?> days</td>
						<td class='align-center'><?=$p['maxstd']?></td>
						<td class='align-right'><?=$p['price']?></td>
					</tr>
					<? } ?>
				</tbody>
			</table>	
		</div>
		
		<div class='cell'>
			<?=$authenticate?>
		</div>
	</div>
</div>