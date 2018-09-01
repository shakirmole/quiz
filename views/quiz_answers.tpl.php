<div class='grid'>
	<div class='row cells12'>
		<div class='cell colspan3'>
			
					<table class="table bordered border hovered" border="0" data-role="">
						<thead>
							<tr>
								<th>No.</th>
								<th>Student</th>
								<th>Marks</th>
							</tr>
						</thead>
						<tbody>
							<?php foreach($squizzes as $id=>$R) { ?>
								<tr class='pointer' onclick='window.location="?module=quizzes&action=quiz_answers&id=<?=$R['quizid']?>&sid=<?=$R['studentid']?>"'>
									<td style="width:30px"><?=$id+1?></td>
									<td>
										<?=$R['student']?>
									</td>
									<td>
										<? if ($R['marked']) {
												$total = round(($R['marks']*100)/($R['total']));
												echo $R['marks'].'/'.$R['total']." ($total%)";
										   }
										   else echo 'Unmarked'; ?> <br>
										<small class='place-right'><?=fDate($R['dom'],'j-m-y H:i')?> </small>
									</td>
								</tr>
							<?php } ?>
						</tbody>
						
					</table>
				
		</div>
		<div class='cell colspan9'>
			<h3> <?=$quiz['name']?><? if ($squiz) { ?> - <?=$squiz['student']?> (<?=round($squiz['marks']*100/$squiz['total'])?>%) <?}?></h3>

			<form enctype="multipart/form-data" <?//VALIDATEFORM?> action="?module=quizzes&action=quiz_answers_save" method="post">
				<?=insertHiddenInput('sid',$sid)?>
				<?=insertHiddenInput('quizid',$quiz['id'])?>
				<? $marked = $squiz['marked']; ?>
				<? //print_r($answers); ?>
				
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
								$correct++;
							} else $color = 'red';
							// echo 't'.$total; echo 'q'.count($r['fb']);
							
							$qid = $q['id'];
							$hint = "data-role='popover' data-popover-mode='click' data-css='padding:0px' data-popover-timeout='1000' data-popover-position='right' data-popover-text='".$sanswers[$qnid][$i]['solution']."' data-popover-background='bg-green' data-popover-color='fg-white'";
							$blanks[$i] = "<span class='bg-$color fg-white tag' style='font-size:1.2em' $hint>&nbsp;".$sanswers[$qnid][$i]['answer'].'&nbsp;</span>';
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
						if (!$marked) $marks += ($correct/$qncount)*$total;	
						else $marks = $sanswers[$qnid][0]['marks'];
					?>
					<?=$v+1?>.) <?=$question?> (<?=$r['marks']?> marks)	
					
					&nbsp; <?=insertTextInput('|Marks',"marks[$qaid]",$marks,'fb marks','Enter the answer','number',0,"max|$total|Max is $total","max='$total'");?>		
					<? } ?>
					<? if ($r['type'] == 'Short Answers') { 
						if (!$marked) $marks += $r['marks'];	
						else $marks = $sanswers[$qnid][0]['marks'];			
						$total = $r['marks'];
					?>
						<div class='bg-grayLighter '>
							<? $hint = "data-role='popover' data-popover-mode='click' data-popover-timeout='3000' data-popover-position='bottom' data-popover-text='".$sanswers[$qnid][0]['solution']."' data-popover-background='bg-green' data-popover-color='fg-white'"; ?>
							<?=insertTextInput('|Marks',"marks[$qaid]",$marks,'sa marks','Enter the answer','number',0,"max|$total|Max is $total","max='$total'",'place-right')?>
							<p class='padding10' <?=$hint?>> <?=$sanswers[$qnid][0]['answer']?> </p>
						</div>
					<? } ?>
					<? if ($r['type'] == 'Long Answers') { 
						if (!$marked) $marks += $r['marks'];
						else $marks = $sanswers[$qnid][0]['marks'];
						$total = $r['marks'];
					?>
						<div class='bg-grayLighter '>
							<? $hint = "data-role='popover' data-popover-mode='click' data-popover-timeout='5000' data-popover-position='bottom' data-popover-text='".$sanswers[$qnid][$i]['solution']."' data-popover-background='bg-green' data-popover-color='fg-white'"; ?>
							<?=insertTextInput('|Marks',"marks[$qaid]",$marks,'la marks','Enter the answer','number',0,"max|$total|Max is $total","max='$total'",'place-right')?>
							<p class='padding10' <?=$hint?>> <?=$sanswers[$qnid][0]['answer']?> </p>
						</div>
					<? } ?>
					<? if ($r['type'] == 'Multiple Choices') { 
						foreach ($r['mc'] as $mc) {
							if ($mc['correct'] == 1) $mcanswer = $mc['answer'];
						}
						if ($mcanswer == $sanswers[$qnid][0]['answer']) {
							$color = 'green'; 
							if (!$marked) $marks += $r['marks'];
						} else $color = 'red';
						if ($marked) $marks = $sanswers[$qnid][0]['marks'];
						$total = $r['marks'];
					?>
						<? $hint = "data-role='popover' data-popover-mode='click' data-popover-timeout='1000' data-popover-position='right' data-popover-text='".$sanswers[$qnid][0]['solution']."' data-popover-background='bg-green' data-popover-color='fg-white'"; ?>
						<span class="bg-<?=$color?> fg-white tag" <?=$hint?> style="font-size:1.2em">&nbsp;<?=$sanswers[$qnid][0]['answer']?>&nbsp;</span> 
						&nbsp; <?=insertTextInput('|Marks',"marks[$qaid]",$marks,'mc marks','Enter the answer','number',0,"max|$total|Max is $total","max='$total'",'')?> <br>
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
														$correct++;
													} else $color = 'red'; ?> 
												<span class="tag bg-<?=$color?> fg-white" style='font-size:1.2em'><?=$sanswers[$qnid][$i]['answer']?></span>
											</td>
										</tr>
									<? $i++; } ?>
								</tbody>
							</table>
							<? if (!$marked) $marks = (($correct/count($r['mi']))*$total); else $marks = $sanswers[$qnid][0]['marks']; ?>
							<div class='align-right'>
								<?=insertTextInput('|Marks',"marks[$qaid]",$marks,'mi marks','Enter the answer','number',0,"max|$total|Max is $total","max='$total'",'')?>
							</div>
						</div>
					<? } ?>
					<? if ($r['type'] == 'True False') { 
						if ($r['tf'][0]['answer'] == $sanswers[$qnid][0]['answer']) {
							$color = 'green'; 
							if (!$marked) $marks += $r['marks'];
						} else $color = 'red';
						if ($marked) $marks = $sanswers[$qnid][0]['marks'];
						$total = $r['marks'];
						?>
						<span class="bg-<?=$color?> fg-white tag" style="font-size:1.2em">&nbsp;<?=$sanswers[$qnid][0]['answer']?>&nbsp;</span>
						&nbsp; <?=insertTextInput('|Marks',"marks[$qaid]",$marks,'tf marks','Enter the answer','number',0,"max|$total|Max is $total","max='$total'",'')?> <br>
					<? } echo '<br>';
					} ?> <br>
			<? } ?>
				<? if ($squiz) echo insertSaveButton('Save'); ?>
				
			</form>
		</div>
	</div>
</div>

<script>
	$( function(){		
		$(document).on('blur','.marks', function() {
			checkMaxMarks(this);
		})
		addHint('marks');
	})
	
	function checkMaxMarks(obj) {
		var max = parseFloat($(obj).prop('max'));
		var marks = parseFloat($(obj).val());
		var hint = $(obj).data('validate-hint');
		
		if (marks > max) {
			triggerError(hint);
			$(obj).focus();
		}
	}
	
	function addHint(cls) {
		$('.'+cls).each( function() {
			$(this).after('<div class="line hint2 align-right bg-brown fg-white" style="min-width: 0px; position: relative; width: 206px; z-index: 0;">Marks</div>');
		})
	}
</script>