<h2> <?=$quiz['name']?> </h2> <br>
<form enctype="multipart/form-data" <?=VALIDATEFORM?> action="?module=student_quizzes&action=quiz_save" method="post">	
	<?=insertHiddenInput('quizid',$quiz['id'])?>
	
	<? foreach ($sections as $sid=>$section) { ?>
		<h4> Section <?=$section['sortno']?> - <?=$section['title']?> (<?=$section['marks']?> marks) </h4> 
		<? foreach ($section['qns'] as $v=>$r) {		
			$qnid = $r['id'];
		?>
		
		<? if ($r['type'] != 'Fill in the Blanks') { ?>
		<?=$v+1?>.) <?=$r['question']?> (<?=$r['marks']?> marks)
		<? } ?>
		
		<? if ($r['type'] == 'Fill in the Blanks') { 
			echo '<br>';
			$i=0;
			foreach ($r['fb'] as $q) { 
				$qid = $q['id'];				
				$blanks[$i] = '<input type="text" name="fb['.$qnid.']['.$qid.']" class="afitb" title="Enter the answer" value="'.$sanswers[$qnid][$i]['answer'].'" placeholder="Answer">';
				$i++; 
			}
				// insertTextInput('|Answer',"",,'afitb','Enter the answer','text',1,'||Question is required');
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
		?>
		<?=$v+1?>.) <?=$question?> (<?=$r['marks']?> marks)			
		<? } ?>
		<? if ($r['type'] == 'Short Answers') { ?>
			<?=insertTextInput('|Answer',"sa[$qnid]",$sanswers[$qnid][0]['answer'],'asa','Enter the answer','text',1,'||Question is required')?>
		<? } ?>
		<? if ($r['type'] == 'Long Answers') { ?>
			<?=insertTextArea('|Answer',"la[$qnid]",$sanswers[$qnid][0]['answer'],'ala','Enter the answer',1,'','||Answer is required')?>
		<? } ?>
		<? if ($r['type'] == 'Multiple Choices') { ?>
			<div class='grid'>
				<div class='row cells<?=count($r['mc'])?>'>
					<? foreach ($r['mc'] as $qv=>$q) { ?>
						<div class='cell'>					
							<?=insertRadioInput($q['answer'],"mc[$qnid]",$q['answer'],'amc','Select the answer',0,$q['answer'].'|'.$sanswers[$qnid][0]['answer'])?>
						</div>
					<? } ?>
				</div>
			</div>
		<? } ?>
		<? if ($r['type'] == 'Matching Items') { ?>
			<table class='table border bordered' style='width:50%'>
				<thead>
					<tr>
						<th>Item</th>
						<th>Answer</th>
					</tr>
				</thead>
				<tbody>
					<? $i=0;
						foreach ($r['mi'] as $m) { 
							$miid = $m['id'];
						?>
						<tr>
							<td><?=$m['qoption']?></td>
							<td>
								<?=insertSelect('',"mi[$qnid][$miid]",'mi','',1,1,$answers[$r['id']],'answer|answer','answer|'.$sanswers[$qnid][$i]['answer'],'','','')?>
							</td>
						</tr>
					<? $i++; } ?>
				</tbody>
			</table>
		<? } ?>
		<? if ($r['type'] == 'True False') { ?>
			&nbsp; <?=insertRadioInput('True',"tf[$qnid]",'True','atf','Select the answer',0,'True|'.$sanswers[$qnid][0]['answer'])?>
			<?=insertRadioInput('False',"tf[$qnid]",'False','atf','Select the answer',0,'False|'.$sanswers[$qnid][0]['answer'])?>
		<? } echo '<br>';
		} ?> <br>
<? } ?>

<?=insertSaveButton('End')?>

</form>

<script>
	$( function() {
		$('.mi').select2();
		$('.select2').addClass('full-size');
	})
	</script>	