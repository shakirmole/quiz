<h3> <?=$quiz['name']?> Setup </h3>

<div class='grid'>
	<div class='row cells4'>
		<div class='cell'>
			<div class="padding5 bg-white">
				<table class="table bordered border hovered" border="0" data-role="">
					<thead>
						<tr>
							<th>No.</th>
							<th>Section</th>					
							<th>Qns</th>
						</tr>
					</thead>
					<tbody>
						<?php foreach($sections as $id=>$R) { ?>
							<tr class='pointer' onclick='window.location = "?module=quizzes&action=quiz_questions_edit&id=<?=$R['quizid']?>&sectionid=<?=$R['id']?>"'>
								<td><?=$R['sortno']?></td>
								<td><?=$R['type']?></td>
								<td><?=$R['qno']?></td>
							</tr>
						<?php } ?>
					</tbody>
				</table>
			</div>
		</div>
		<div class='cell colspan3 padding10 bg-white bd-grayLighter' style='border:1px solid gray'>
			<h3> New Section </h3>
			<form enctype="multipart/form-data" <?=VALIDATEFORM?> action="?module=quizzes&action=quiz_section_save" method="post">	
				<?=insertHiddenInput('qs[quizid]',$quiz['id'])?>
				<?=insertHiddenInput('id',$question['id'])?>
				
				<div class="grid">
					<div class="row cells5">
						<div class='cell colspan3'>
							<?=insertTextInput('Title','qs[title]',$qsection['title'],'title firstfocus','Enter the title','text',1,'required||Title is required')?>
						</div>
						<div class='cell'>
							<?=insertSelect('Section Type','qs[typeid]','typeid','',1,1,$types,'name|id','id|'.$qsection['typeid'])?>
						</div>
						<div class='cell'>
							<?=insertTextInput('No of Qns','qno',1,'qno','Enter the number of questions','number',1,'required||Qn count is required')?>
						</div>
					</div>
				</div>
				
				<?=insertSaveButton('Save')?>
			</form>
		</div>
	</div>
</div>
