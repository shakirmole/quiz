<div class='grid'>	
	<div class='row cells5'>
		<div class='cell colspan4'>
		
			<? if ($_SESSION['member']['type'] == 'admin') { ?>
			<h3>Admin Dashboard</h3>
			
			<table class="table bordered border" style='max-width:800px'>
				<thead>
					<tr>
						<th>No</th>
						<th>School &nbsp; <a class='place-right fg-white' href='?module=masters&action=schools'>Open <span class='fg-white mif-enter'></span></a></th>
						<th>Package &nbsp; <a class='place-right fg-white' href='?module=masters&action=packages'>Open <span class='fg-white mif-enter'></span></a></th>
						<th>Income</th>
					</tr>
				</thead>
				<tbody>
					<? foreach ($schools as $v=>$r) { ?>
					<tr>
						<td><?=$v+1?></td>
						<td><?=$r['name']?></td>
						<td><?=$r['package']?></td>
						<td><?=$r['price']?></td>
					</tr>
					<? } ?>
				</tbody>
			</table>
			<? } ?>
			
			<? if ($_SESSION['member']['type'] == 'staff') { ?>
				<h3>Staff Dashboard</h3>
			
				<table class="table bordered border" style='max-width:800px'>
					<thead>
						<tr>
							<th class='force-center' colspan='<?=count($grades)+1?>'>Students &nbsp; <a class='place-right fg-white' href='?module=users&action=students'>Open <span class='fg-white mif-enter'></span></a></th>
						</tr>
						<tr>
							<th></th>
							<? foreach ($grades as $v=>$r) { ?>
							<th><?=$r['name']?></th>
							<? } ?>
						</tr>
					</thead>
					<tbody>
						<? foreach ($divs as $v=>$r) { ?>
						<tr>
							<td><?=$r['name']?></td>
								<? foreach ($grades as $grade){ ?>
							<td> 
								<?=count($students[$grade['id']][$r['id']])?> Students
							</td>
								<? } ?>
						</tr>
						<? } ?>
					</tbody>
				</table>
				
				<table class="table bordered border" style='max-width:800px'>
					<thead>
						<tr>
							<th class='force-center' colspan=3>Test Papers &nbsp; <a class='place-right fg-white' href='?module=quizzes&action=index'>Open <span class='fg-white mif-enter'></span></a></th>
						</tr>
						<tr>
							<th>Name</th>
							<th>Students Taken</th>
							<th>Students Not taken</th>
						</tr>
					</thead>
					</tbody>
						<? foreach ($quizzes as $r) { 
							$stotal = 100/($r['taken']+$r['ntaken']);
						?>
						<tr>
							<td><?=$r['name']?></td>
							<td class='align-center'><?=$r['taken']?> </td>
							<td class='align-center'><?=$r['ntaken']?> </td>
						</tr>
						<? } ?>
					</tbody>
				</table>
			
				<table class="table bordered border" style='max-width:800px'>
					<tr>
						<th colspan=3>Your Current Package</th>
					</tr>
					<tr>
						<td><?=$_SESSION['package']['package']?></td>
						<td><?=$_SESSION['package']['maxstd']?> Students</td>
						<td>
							<?=fDate($_SESSION['package']['enddate'],'jS M Y h:i A')?>
							<? $days = round((strtotime($_SESSION['package']['enddate']) - time())/86400);?>
							 <? if ($days<=30) $color = 'bg-red fg-white';?> <small class='<?=$color?> tag'><?=$days?> days </small>
						</td>
					</tr>
				</table>
			<? } ?>
			
			<? if ($_SESSION['member']['type'] == 'student') { ?>
				<h3>Student Dashboard</h3>
			
			<table class="table bordered border" style='max-width:800px'>
				<col width='25%'> <col width='25%'>	<col width='25%'>
				<thead>
					<tr>
						<th colspan=2>On Going</th>
						<th colspan=2>All Time</th>
					</tr>
					<tr>
						<th>Taken &nbsp; <a class='place-right fg-white' href='?module=student_quizzes&action=myquizzes'>Open <span class='fg-white mif-enter'></span></a></th>
						<th>Not Taken &nbsp; <a class='place-right fg-white' href='?module=student_quizzes&action=browse'>Open <span class='fg-white mif-enter'></span></a></th>
						<th>Taken &nbsp; <a class='place-right fg-white' href='?module=student_quizzes&action=myquizzes'>Open <span class='fg-white mif-enter'></span></a></th>
						<th>Not Taken &nbsp; </th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><?=$student['otaken']?></td>
						<td><?=$student['ontaken']?> <?if($student['ontaken']){?><span class='mif-warning mif-ani-flash fg-red'></span><?}?></td>
						<td><?=$student['taken']?></td>
						<td><?=$student['ntaken']?></td>
					</tr>
				</tbody>
			</table>
			<? } ?>
			
		</div>
		
		<div class='cell'>
			<?=$authenticate?>
		</div>
	</div>
</div>