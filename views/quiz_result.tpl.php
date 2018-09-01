<? if ($quiz['print'] == 'Yes' && !$print) { ?>
	<span class="place-right"> <a class='button' href='?print=1&module=student_quizzes&action=quiz_result&id=<?=$quiz['id']?>&sid=<?=$squiz['studentid']?>' target='_blank'> Print </a> </span>
<? } ?>
<div id='print'>
	<table class='table border bordered'>
		<tr>
			<td style='width:20%'><img class='margin5' style='width:100px;' src='img/<?=$school['logo']?>'></td>
			<td class='align-center' style='width:50%'>
				<h4><?=$school['name']?> </h4>
				<?=$quiz['name']?>
			</td>
			<td>
				Test Date: <?=fDate($quiz['startdate'],'jS M Y')?> <br>
				<?=fDate($quiz['startdate'],'h:i A')?> - <?=fDate($quiz['enddate'],'h:i A');?>
			</td>
		<tr>
		<tr>
			<td colspan=2><?=$squiz['student']?></td>
			<td></td>
		</tr>
		<tr>
			<td colspan=3 style='padding:0 !important'>
				<table class='table bordered border'>
					<tr>
					<? foreach ($sections as $v=>$r) { ?>
						<td>Section <?=$r['sortno']?></td>
					<? } ?>
						<td>Total</td>
					</tr>
					<tr>
						<? foreach ($qsecs as $v=>$r) { ?>
						<td>
							<?=$r['marks']?>/<?=$r['total']?>
						</td>
						<? } ?>
						<td><?=$squiz['marks']?>/<?=$squiz['total']?> (<?=round($squiz['marks']*100/$squiz['total'])?>%)</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<br><br>
	
	<? foreach ($sections as $sid=>$section) { ?>
		<h4> Section <?=$section['sortno']?> - <?=$section['title']?> (<?=$section['marks']?> marks) </h4> 
		<? foreach ($section['qns'] as $v=>$r) {
			$qnid = $r['id'];
			$qaid = $sanswers[$qnid][0]['id'];
			$marks = 0; 
		?>
		
		<? if ($r['type'] != 'Fill in the Blanks') { ?>
			<?=$v+1?>.) <?=$r['question']?> (<?=$r['marks']?> marks)
		<? } ?>
		
		<? if ($r['type'] == 'Fill in the Blanks') { 
			echo '<br>';
			$i=0; $correct = 0; $total = $r['marks']; $qncount = count($r['fb']);
			foreach ($r['fb'] as $q) {
				if (trim(strtolower($sanswers[$qnid][$i]['answer'])) == trim(strtolower($q['answer']))) { 
					$color = 'green';
				} else $color = 'red';
				$color = 'grayLighter';//override
				
				$qid = $q['id'];
				$hint = "data-role='popover' data-popover-mode='click' data-css='padding:0px' data-popover-timeout='1000' data-popover-position='right' data-popover-text='".$sanswers[$qnid][$i]['solution']."' data-popover-background='bg-green' data-popover-color='fg-white'";
				$blanks[$i] = "<span class='bg-$color fg-black tag' style='font-size:1.2em' $hint>&nbsp;".$sanswers[$qnid][$i]['answer'].'&nbsp;</span>';
				$i++; 
			}
			
			$words = '';
			$words = preg_split('/[\s,]+/', $r['question']);
			$i=0;
			foreach ($words as $wno=>$w) {
				if ($w == '{blank}') {
					$words[$wno] = $blanks[$i]; 
					$i++;
				}
			}
			$question = implode(' ',$words);
			$marks = $sanswers[$qnid][0]['marks'];
		?>
		<?=$v+1?>.) <?=$question?> (<?=$r['marks']?> marks)	
		
		&nbsp;	<span style='border:2px solid transparent;padding:2px 5px;border-radius:5px' class="bd-green ribbed-lightOlive fg-white"><?=$marks?></span>
		<? } ?>
		<? if ($r['type'] == 'Short Answers') { 
			$marks = $sanswers[$qnid][0]['marks'];			
			$total = $r['marks'];
		?>
		<div class='bg-grayLighter '>
			<? $hint = "data-role='popover' data-popover-mode='click' data-popover-timeout='3000' data-popover-position='bottom' data-popover-text='".$sanswers[$qnid][0]['solution']."' data-popover-background='bg-green' data-popover-color='fg-white'"; ?>
			<span style='border:2px solid transparent;padding:2px 5px;border-radius:5px' class="bd-green ribbed-lightOlive fg-white place-right"><?=$marks?></span>
			<p class='padding10' <?=$hint?>> <?=$sanswers[$qnid][0]['answer']?> </p>
		</div>
		<? } ?>
		<? if ($r['type'] == 'Long Answers') { 
			$marks = $sanswers[$qnid][0]['marks'];
			$total = $r['marks'];
		?>
		<div class='bg-grayLighter '>
			<? $hint = "data-role='popover' data-popover-mode='click' data-popover-timeout='5000' data-popover-position='bottom' data-popover-text='".$sanswers[$qnid][$i]['solution']."' data-popover-background='bg-green' data-popover-color='fg-white'"; ?>
			<span style='border:2px solid transparent;padding:2px 5px;border-radius:5px' class="bd-green ribbed-lightOlive fg-white place-right"><?=$marks?></span>
			<p class='padding10' <?=$hint?>> <?=$sanswers[$qnid][0]['answer']?> </p>
		</div>
		<? } ?>
		<? if ($r['type'] == 'Multiple Choices') { 
			foreach ($r['mc'] as $mc) {
				if ($mc['correct'] == 1) $mcanswer = $mc['answer'];
			}
			if ($mcanswer == $sanswers[$qnid][0]['answer']) {
				$color = 'green'; 
			} else $color = 'red';
			$marks = $sanswers[$qnid][0]['marks'];
			$total = $r['marks'];
		?>
		<? $hint = "data-role='popover' data-popover-mode='click' data-popover-timeout='1000' data-popover-position='right' data-popover-text='".$sanswers[$qnid][0]['solution']."' data-popover-background='bg-green' data-popover-color='fg-white'"; ?>
		<span class="bg-<?=$color?> fg-white tag" <?=$hint?> style="font-size:1.2em">&nbsp;<?=$sanswers[$qnid][0]['answer']?>&nbsp;</span> 
		&nbsp; <span style='border:2px solid transparent;padding:2px 5px;border-radius:5px' class="bd-green ribbed-lightOlive fg-white"><?=$marks+0?></span> <br>
		<? } ?>
		<? if ($r['type'] == 'Matching Items') { ?>
			<div style='width:50%'>
				<table class='table border bordered'>
					<thead>
						<tr>
							<th>Item</th>
							<th>Answer</th>
						</tr>
					</thead>
					<tbody>
						<? $i=0; $correct = 0; $total = $r['marks'];
							foreach ($r['mi'] as $m) { 
								$miid = $m['id'];
							?>
							<tr>
								<td><?=$m['qoption']?></td>
								<td>
									<? 	if ($m['answer'] == $sanswers[$qnid][$i]['answer']) {
										$color = 'green'; 
										$ans = '';
									} else { $color = 'red'; $ans = "<span class='bg-green fg-white tag'>".$m['answer']."</span>"; }?> 
									<span class="tag bg-<?=$color?> fg-white" style='font-size:1.2em'><?=$sanswers[$qnid][$i]['answer']?></span>
									&nbsp;<?=$ans?>
								</td>
							</tr>
						<? $i++; } ?>
					</tbody>
				</table>
				<? $marks = $sanswers[$qnid][0]['marks']; ?>
				<div class='align-right'>
					<span style='border:2px solid transparent;padding:2px 5px;border-radius:5px' class="bd-green ribbed-lightOlive fg-white"><?=$marks?></span>
				</div>
			</div>
		<? } ?>
		<? if ($r['type'] == 'True False') { 
			if ($r['tf'][0]['answer'] == $sanswers[$qnid][0]['answer']) {
				$color = 'green'; 
				$marks = $sanswers[$qnid][0]['marks'];
			} else $color = 'red';
			$total = $r['marks'];
		?>
		<span class="bg-<?=$color?> fg-white tag" style="font-size:1.2em">&nbsp;<?=$sanswers[$qnid][0]['answer']?>&nbsp;</span>
		&nbsp; <span style='border:2px solid transparent;padding:2px 5px;border-radius:5px' class="bd-green ribbed-lightOlive fg-white"><?=$marks?></span> <br>
		<? } echo '<br>';
		} ?> <br>
		<? } ?>
</div>