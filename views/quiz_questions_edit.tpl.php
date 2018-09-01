<h3> <?=$quiz['name']?> - <?=$section['title']?> </h3>

<div class='grid'>
	<div class='row cells4'>
		<div class='cell'>
			<div>
				<table class="table bordered border hovered" border="0" data-role="">
					<thead>
						<tr>
							<th>No.</th>
							<th>Question</th>
							<th>Marks</th>
						</tr>
					</thead>
					<tbody>
						<?php foreach($questions as $id=>$R) { ?>
							<tr class='pointer' onclick="window.location = '?module=quizzes&action=quiz_questions_edit&id=<?=$R['quizid']?>&qnid=<?=$R['id']?>&sectionid=<?=$R['sectionid']?>'">
								<td><?=$R['sortno']?></td>
								<td><?=substr($R['question'],0,25)?></td>
								<td><?=$R['marks']?></td>
							</tr>
						<?php } ?>
							<tr class='pointer' onclick="window.location = '?module=quizzes&action=quiz_questions_edit&new=1&id=<?=$R['quizid']?>&sectionid=<?=$R['sectionid']?>'">
								<td colspan=3> New Question .. </td>
							</tr>
					</tbody>
				</table>
			</div>
			<br>
			<span> <a class="button" href="?module=quizzes&action=quiz_section_edit&id=<?=$quiz['id']?>"> Review Sections </a> </span>
		</div>
		<div class='cell colspan3 padding10 bg-white bd-grayLighter' style='border:1px solid gray'>
			<? if ($new || $question['id']) { ?>
			<form enctype="multipart/form-data" <?=VALIDATEFORM?> action="?module=quizzes&action=quiz_questions_save" method="post">	
				<?=insertHiddenInput('qn[quizid]',$quiz['id'])?>
				<?=insertHiddenInput('qn[sectionid]',$section['id'])?>
				<?=insertHiddenInput('qn[typeid]',$section['typeid'])?>
				<?=insertHiddenInput('id',$question['id'])?>
				
				<div class="grid">
					<div class="row cells5">
						<div class='cell colspan4'>
							<? if ($question['question'] == 'Untitled') $question['question'] = ''; ?>
							<?=insertTextInput('Question No '.$question['sortno'].'|New Question','qn[question]',$question['question'],'question firstfocus','Enter the question','text',1,'required||Question is required')?>
						</div>
						<div class='cell'>
							<?=insertTextInput('Marks','qn[marks]',$question['marks'],'marks','Enter the marks','number',1,'required||Marks is required')?>
						</div>
					</div>
					<div class='fitb qntype row cells4 no-display'>
						*Enter the answers for each of the blanks. Use {blank} to identify each answered required in the sentence e.g. 4 + {blank} = 5
						<table class='table bordered border'>
							<thead>
								<tr>
									<th>Blank</th>
									<th>Blank</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<?=insertTextInput('|Answer 1','fb[]',$fb[0]['answer'],'afitb','Enter the answer','text',1,'||Question is required')?>
									</td>
									<td>
										<?=insertTextInput('|Answer 2','fb[]',$fb[1]['answer'],'afitb','Enter the answer','text',1,'||Question is required')?>
									</td>
								</tr>
								<tr>
									<td>
										<?=insertTextInput('|Answer 3','fb[]',$fb[2]['answer'],'afitb','Enter the answer','text',1,'||Question is required')?>
									</td>
									<td>
										<?=insertTextInput('|Answer 4','fb[]',$fb[3]['answer'],'afitb','Enter the answer','text',1,'||Question is required')?>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class='sa qntype row no-display'>
						<div class='cell'>
							<?=insertTextInput('Sample Answer','sa',$sa[0]['answer'],'asa','Enter the answer','text',1,'||Question is required')?>
						</div>
					</div>
					<div class='la qntype row no-display'>
						<div class='cell'>
							<?=insertTextArea('Sample Answer','la',$la[0]['answer'],'ala','Enter the answer',1,'','||Answer is required')?>
						</div>
					</div>
					<div class='mc qntype row no-display'>
						<div class='cell'>
							<table class='table border bordered'>
								<thead>
									<tr>
										<th>Option</th>
										<th></th>
										<th>Option</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<?=insertTextInput('|A','mc[]',$mc[0]['answer'],'amc','Enter the answer','text',1,'||Question is required')?>
										</td>
										<td>
											<?=insertRadioInput('Correct','amc','0','amc','Select the answer',0,'1|'.$mc[0]['correct'])?>
										</td>
										<td>
											<?=insertTextInput('|B','mc[]',$mc[1]['answer'],'amc','Enter the answer','text',1,'||Question is required')?>
										</td>
										<td>
											<?=insertRadioInput('Correct','amc','1','amc','Select the answer',0,'1|'.$mc[1]['correct'])?>
										</td>
									</tr>
									<tr>
										<td>
											<?=insertTextInput('|C','mc[]',$mc[2]['answer'],'amc','Enter the answer','text',1,'||Question is required')?>
										</td>
										<td>
											<?=insertRadioInput('Correct','amc','2','amc','Select the answer',0,'1|'.$mc[2]['correct'])?>
										</td>
										<td>
											<?=insertTextInput('|D','mc[]',$mc[3]['answer'],'amc','Enter the answer','text',1,'||Question is required')?>
										</td>
										<td>
											<?=insertRadioInput('Correct','amc','3','amc','Select the answer',0,'1|'.$mc[3]['correct'])?>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class='mi qntype row no-display'>
						<div class='cell'>
							<table class='table border bordered'>
								<thead>
									<tr>
										<th>Option</th>
										<th>Option</th>
										<th>Option</th>
										<th>Option</th>
									</tr>
								</thead>
								<tbody>
									<? for ($i=0;$i<16;$i+=4) { ?>
										<tr>
											<td>
												<?=insertTextInput('|Option '.($i+1),'mil[]',$mi[$i]['qoption'],'mil','Enter the answer','text',1,'||Question is required')?>
												<?=insertTextInput('|Answer','mir[]',$mi[$i]['answer'],'mir','Enter the answer','text',1,'||Question is required')?>
											</td>
											<td>
												<?=insertTextInput('|Option '.($i+2),'mil[]',$mi[$i+1]['qoption'],'mil','Enter the answer','text',1,'||Question is required')?>
												<?=insertTextInput('|Answer','mir[]',$mi[$i+1]['answer'],'mir','Enter the answer','text',1,'||Question is required')?>
											</td>
											<td>
												<?=insertTextInput('|Option '.($i+3),'mil[]',$mi[$i+2]['qoption'],'mil','Enter the answer','text',1,'||Question is required')?>
												<?=insertTextInput('|Answer','mir[]',$mi[$i+2]['answer'],'mir','Enter the answer','text',1,'||Question is required')?>
											</td>
											<td>
												<?=insertTextInput('|Option '.($i+4),'mil[]',$mi[$i+3]['qoption'],'mil','Enter the answer','text',1,'||Question is required')?>
												<?=insertTextInput('|Answer','mir[]',$mi[$i+3]['answer'],'mir','Enter the answer','text',1,'||Question is required')?>
											</td>
										</tr>
									<? } ?>
								</tbody>
							</table>
						</div>
					</div>
					<div class='tf qntype row no-display'>
						<div class='cell'>
							<?=insertRadioInput('True','tf','True','atf','Select the answer',0,'True|'.$tf[0]['answer'])?>
							<?=insertRadioInput('False','tf','False','atf','Select the answer',0,'False|'.$tf[0]['answer'])?>
						</div>
					</div>
				</div>
				<?=insertSaveButton('Save')?>
				<? if ($question['id']) $text = 'Delete'; else $text = 'Re-sort'; ?>
				<a class='place-right button' href='?module=quizzes&action=quiz_question_delete&quizid=<?=$quiz['id']?>&id=<?=$question['id']?>&sectionid=<?=$section['id']?>'><?=$text?></a>
			</form>
			<? } ?>
		</div>
	</div>
</div>
<script>	
	function showQuestionType(qntype) {
		$('.qntype').addClass('no-display');
		if (qntype == 'Fill in the Blanks') {
			$('.fitb').removeClass('no-display');
		}
		if (qntype == 'Short Answers') {
			$('.sa').removeClass('no-display');
		}
		if (qntype == 'Long Answers') {
			$('.la').removeClass('no-display');
		}
		if (qntype == 'Multiple Choices') {
			$('.mc').removeClass('no-display');
		}
		if (qntype == 'Matching Items') {
			$('.mi').removeClass('no-display');
		}
		if (qntype == 'True False') {
			$('.tf').removeClass('no-display');
		}
	}
	
	$( function(){
		showQuestionType('<?=$section['type']?>');
		
		$(document).on('change','.typeid', function() {
			showQuestionType(this);
		})
	})
</script>				