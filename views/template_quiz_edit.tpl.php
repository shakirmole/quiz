<h3> Add Test from Template </h3>
<form enctype="multipart/form-data" method="post" <?=VALIDATEFORM?> action='?module=quizzes&action=template_quiz_section_save'>
	<?=insertHiddenInput('quiz[schoolid]',SCHOOLID)?>
	<?=insertHiddenInput('quiz[print]','Yes')?>
	
	<div class='grid'>
		<div class='row cells4'>
			<div class='cell'>
				<?=insertTextInput('Name','quiz[name]',$quiz['name'],'firstfocus','Enter the test\'s name','text',1,'required||Name is required')?>
			</div>
			<div class='cell'>
				<?=insertSelect('Category','quiz[categoryid]','catid','Select the category',1,1,$cats,'name|id','id|'.$quiz['categoryid'])?>
			</div>
			<div class='cell'>
				<?=insertSelect('Subcategory','quiz[scategoryid]','scatid','Select the subcategory',1,1,$scats,'name|id','id|'.$quiz['scategoryid'])?>
			</div>
			<div class='cell'>
				<?=insertSelect('Test Template','quiz[parentquizid]','quizid','Select the test',1,0,'','name|id','id|')?>
			</div>
		</div>
	</div>
	
	<div class='quiz-sections'></div>

</form>

<script>
	function getQuizzes() {
		var catid = $('.catid').val();
		var scatid = $('.scatid').val();
		
		$.get('?module=quizzes&action=getQuizzes&format=json&catid='+catid+'&scatid='+scatid,null,function(d){
			CC = JSON.parse(d);
			
			$('.quizid').find('option').remove();
			$('.quizid').append($('<option>', {value:'', text:''}));
			for(i=0;i<CC.length;i++) {
				$('.quizid').append($('<option>', {value:CC[i].id, text:CC[i].name}));
			}
		});

	}

	function getQuizSections() {
		var quizid = $('.quizid').val();

		$('.quiz-sections').load('?module=quizzes&action=get_quiz_sections&quizid='+quizid);
	}

	$(document).on('change','.catid, .scatid',function(){
		getQuizzes();
	})
	$(document).on('change','.quizid, .quizid',function(){
		getQuizSections();
	})
</script>