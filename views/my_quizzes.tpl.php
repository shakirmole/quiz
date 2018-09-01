<h2> My Quizzes </h2>

<? if ($quizzes) { ?>
<div class='grid'>
	<div class='row cells4'>
		<? foreach ($quizzes as $r) { ?>
			<div class="cell">
				<div class="panel">
					<div class="heading bg-<?=COLOR?>">
						<span class="title"><?=$r['name']?></span>
					</div>
					<div class="content bg-white bd-gray padding5" style='border:1px solid white'>
						<span class='tag success'><?=$r['cat']?></span> <span class='tag info'><?=$r['scat']?></span>
						<h4> <?=fDate($r['startdate'],'jS M')?> to <?=fDate($r['enddate'],'jS M h:i A')?> <br>
						<small class=''><?=$r['qns']?> Questions (<?=$r['total']?> Marks)</small>
						</h4>
						
						<strong>Score: </strong>
						<? $marks = round($r['marks']*100/$r['total'],2).'% ('.$r['marks'].'/'.$r['total'].')';
						   $mrkline = "<span class='text-accent'>".$marks."</span> <a class='tag fg-white bg-green place-right' href='?module=student_quizzes&action=quiz_result&id=".$r['quizid']."&sid=".USER_ID."'>My Result</a>";
						if ($r['marked']) {
							if ($r['showmarks'] == 'After End Date') { 
								if (time() > strtotime($r['enddate'])) {
									echo $mrkline;
								} else { ?>
								Please wait until test ends
							<? 	}
							}
							if ($r['showmarks'] == 'After Marking') { 
								echo $mrkline;
							}
							if ($r['showmarks'] == 'Never') { ?>
								Hidden
						<? 	}
						} else { echo 'Unmarked'; }?>
						
					</div>
				</div>
			</div>
		<? } ?>
	</div>
</div>
<? } else { ?>
	You haven't taken any test yet
<? } ?>