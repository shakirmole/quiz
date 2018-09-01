<h3> Add Quiz </h3>
<form enctype="multipart/form-data" method="post" <?=VALIDATEFORM?> <?=windowOnSubmit('quizzes','quiz_save')?>>
	<?=insertHiddenInput('id',$quiz['id'])?>
	<?=insertHiddenInput('quiz[schoolid]',SCHOOLID)?>
	
	<div class='grid'>
		<div class='row'>
			<div class='cell'>
				<?=insertTextInput('Name','quiz[name]',$quiz['name'],'firstfocus','Enter the quizs\'s name','text',1,'required||Name is required')?>
			</div>
		</div>
		<div class='row cells2'>
			<div class='cell'>
				<?=insertSelect('Subcategory','quiz[scategoryid]','','Select the subcategory',1,0,$scats,'name|id','id|'.$quiz['scategoryid'])?>
			</div>
			<div class='cell'>
				<?=insertSelect('Category','quiz[categoryid]','','Select the category',1,0,$cats,'name|id','id|'.$quiz['categoryid'])?>
			</div>
		</div>
		<div class='row'>
			<div class='cell'>
				<?=insertTextInput('Marker Email','quiz[email]',$quiz['email'],'','Enter the marker\'s email','email',1,'||Email is required')?>
			</div>
		</div>
		<div class='row'>
			<div class='cell'>
				<?=insertTextArea('Description','quiz[description]',$quiz['description'],'','Enter the description',1,200,'||Company details is required')?><br>
			</div>
		</div>
		<div class='row cells4'>
			<div class='cell'>
				<?=insertTextInput('Start Date','rawfromdate',$rawfromdate,'','Enter the start date','text',1,'required||Start Date is required','','datepicker')?>
			</div>
			<div class='cell'>
				<label>Start Time</label><br>
				<div class="input-control select smallinput">
					<select name="rawfromhour">
						<? for ($i=0;$i<24;$i++) { ?>
						<option <?=selected($i,fDate($quiz['startdate'],'H'))?> > <?=str_pad($i, 2, "0", STR_PAD_LEFT);?> </option>
						<? } ?>
					</select>
				</div>
				<div class="input-control select smallinput">
					<? $min = fDate($quiz['startdate'],'i'); ?>
					<select name="rawfrommin">
						<option <?=selected(00,$min)?> value="00"> 00 </option>
						<option <?=selected(15,$min)?> value="15"> 15 </option>
						<option <?=selected(30,$min)?>  value="30"> 30 </option>
						<option <?=selected(45,$min)?>  value="45"> 45 </option>
					</select>
				</div>
			</div>
			<div class='cell'>
				<?=insertTextInput('End Date','rawtodate',$rawtodate,'','Enter the start date','text',1,'required||Start Date is required','','datepicker')?>
			</div>
			<div class='cell'>
				<label>End Time</label><br>
				<div class="input-control select smallinput">
					<select name="rawtohour">
						<? for ($i=0;$i<24;$i++) { ?>
						<option <?=selected($i,fDate($quiz['enddate'],'H'))?> > <?=str_pad($i, 2, "0", STR_PAD_LEFT);?> </option>
						<? } ?>
					</select>
				</div>
				<div class="input-control select smallinput">
					<? $min = fDate($quiz['enddate'],'i'); ?>
					<select name="rawtomin">
						<option <?=selected(00,$min)?> value="00"> 00 </option>
						<option <?=selected(15,$min)?> value="15"> 15 </option>
						<option <?=selected(30,$min)?>  value="30"> 30 </option>
						<option <?=selected(45,$min)?>  value="45"> 45 </option>
					</select>
				</div>
			</div>
		</div>
		<div class="row">
			<div class='cell'>
				<?=insertSelect('Show Marks','quiz[showmarks]','','Select when to show the marks',1,0,$showmarks,'name|name','name|'.$quiz['showmarks'])?>
			</div>
		</div>
		<div class="row">
			<div class='cell'>
				<label>Permit Printing</label><br>
				<div class="input-control select full-size">
					<select name="quiz[print]">
						<option <?=selected('Yes',$quiz['print'])?> value="Yes"> Yes </option>
						<option <?=selected('No',$quiz['print'])?> value="No"> No </option>
					</select>
				</div>
			</div>
		</div>
	</div>
	
	
	<?=insertSaveButton('Save');?>
</form>