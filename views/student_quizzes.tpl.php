<h2> Browse Tests </h2>

<h3> Ongoing Tests </h3>
<? if ($oquizzes) { ?>
<div class='grid'>
	<div class='row cells4'>
		<? foreach ($oquizzes as $r) { $allowed=0; ?>
			<div class="cell">
				<div class="panel">
					<div class="heading bg-<?=COLOR?>">
						<span class="title"><?=$r['name']?></span>
					</div>
					<div class="content bg-white bd-gray padding5" style='border:1px solid white'>
						<span class='tag success'><?=$r['cat']?></span> <span class='tag info'><?=$r['scat']?></span>
						<? foreach ($r['qclasses'] as $qc) { 
							if ($qc == $_SESSION['member']['class']) $allowed = 1;?>
						<span class='tag warning'><?=$qc?></span>
						<? } ?>
						
						<span style='margin-left:10px' class='place-right mif-question mif-2x' data-role="hint" data-hint-mode="2" data-hint="<?=$r['description']?>"></span>
						<a href="#" onclick="openWindow('?module=student_quizzes&action=quiz_files&id=<?=$r['id']?>')"><span class='place-right mif-download mif-2x'></span></a>
						
						<h4> <?=fDate($r['startdate'],'jS M h:i A')?> <br>
						<small class=''><?=$r['qns']?> Questions (<?=$r['marks']?> Marks)</small>
						</h4>
						
						<small>Ending in</small><br>
						<div class="countdown no-pc" data-role="countdown" data-background-color="bg-<?=COLOR?>" data-stop='<?=fDate($r['enddate'],'Y-m-d H:i')?>' style="font-size: 1rem"></div>
						<div class="countdown no-phone" data-role="countdown" data-background-color="bg-<?=COLOR?>" data-stop='<?=fDate($r['enddate'],'Y-m-d H:i')?>' style="font-size: 0.5rem"></div>	<br><br>
						
						<div class='align-center'>
							<? if ($allowed) { ?>
							<a href='?module=student_quizzes&action=takequiz&id=<?=$r['id']?>' class='button align-center'>Take Quiz</a>
							<? } else { ?>
							<span class='button bg-gray'>Unavailable</span>
							<? } ?>
						</div>
					</div>
				</div>
			</div>
		<? } ?>
	</div>
</div>
<? } else { ?>
	<p>No quizzes are currently available</p>
<? } ?>
<br>
<? if ($uquizzes) { ?>
<h3> Upcoming Tests </h3>
<div class='grid'>
	<div class='row cells4'>
		<? foreach ($uquizzes as $r) { ?>
			<div class="cell">
				<div class="panel">
					<div class="heading bg-<?=COLOR?>">
						<span class="title"><?=$r['name']?></span>
					</div>
					<div class="content bg-white bd-gray padding5" style='border:1px solid white'>
						<span class='tag success'><?=$r['cat']?></span> <span class='tag info'><?=$r['scat']?></span>
						<? foreach ($r['qclasses'] as $qc) { ?>
							<span class='tag warning'><?=$qc?></span>
						<? } ?>
						
						<span style='margin-left:10px' class='place-right mif-question mif-2x' data-role="hint" data-hint-mode="2" data-hint="<?=$r['description']?>"></span>
						<a href="#" onclick="openWindow('?module=student_quizzes&action=quiz_files&id=<?=$r['id']?>')"><span class='place-right mif-download mif-2x'></span></a>
						
						<h4> <?=fDate($r['startdate'],'jS M h:i A')?> <br>
						<small class=''><?=$r['qns']?> Questions (<?=$r['marks']?> Marks)</small>
						</h4>
						
						<small>Starting in</small><br>
						<div class="countdown no-pc" data-role="countdown" data-background-color="bg-<?=COLOR?>" data-on-stop='resetPage()' data-stop='<?=fDate($r['startdate'],'Y-m-d H:i')?>' style="font-size: 1rem"></div>
						<div class="countdown no-phone" data-role="countdown" data-background-color="bg-<?=COLOR?>" data-stop='<?=fDate($r['startdate'],'Y-m-d H:i')?>' style="font-size: 0.5rem"></div>	<br><br>
					</div>
				</div>
			</div>
		<? } ?>
	</div>
</div>
<? } ?>

<script>
	function resetPage() {
		location.reload(true);
	}
</script>