<? if (!$student) $student['status'] = 1; ?>
<h3> Add Student </h3>
<form enctype="multipart/form-data" method="post" <?=VALIDATEFORM?> <?=windowOnSubmit('users','student_save','checkUsername();')?>>
	<?=insertHiddenInput('id',$student['id'])?>
	<?=insertHiddenInput('userid',$student['userid'])?>
	<?=insertHiddenInput('student[schoolid]',SCHOOLID)?>
	
	<div class='grid'>
		<div class='row cells2'>
			<div class='cell'>
				<?=insertTextInput('Name','student[name]',$student['name'],'firstfocus','Enter the students\'s name','text',1,'required||Name is required')?>
			</div>
			<div class='cell'>
				<?=insertTextInput('Reg No','student[regno]',$student['regno'],'','Enter the students\'s reg no','text',1,'required||Reg no is required')?>
			</div>
		</div>
		<div class='row cells2'>
			<div class='cell'>
				<?=insertSelect('Grade','student[gradeid]','','Select the grade',1,0,$grades,'name|id','id|'.$student['gradeid'])?>
			</div>
			<div class='cell'>
				<?=insertSelect('Division','student[divisionid]','','Select the division',1,0,$divisions,'name|id','id|'.$student['divisionid'])?>
			</div>
		</div>
		<div class='row cells2'>		
			<div class='cell'>
				<?=insertTextInput('Mobile','student[mobile]',$student['mobile'],'','Enter the students\'s mobile','text',1,'||Mobile is required')?>
			</div>
			<div class='cell'>
				<?=insertTextInput('Email','student[email]',$student['email'],'','Enter the students\'s email','email',1,'||Email is required')?>
			</div>
		</div>
	</div>
	
	
	<?=insertCheckboxInput('Active','user[status]',1,'','Is an active user','switch',$student['status'].'|1','','place-right')?><br>

	<?=insertTextInput('Username','user[username]',$student['username'],'username','Enter a unique username','text',1,'required||Username is required')?><br>
	
	<?=insertTextInput('Password','user[password]','','','Enter a strong password','password',1,'||Password is required')?><br>
	
	<? 	if (!$student['id']) { 
			if ($stcount > $_SESSION['package']['maxstd']) {
				echo "<a class='button'>Max Students Reached</a>";
	 		} else {
				echo insertSaveButton('Save'); //new student
			}
		} else {
			echo insertSaveButton('Save'); //edit student
		}?>
</form>

<script>
	function checkUsername() {
		var usernames = [
		<?php foreach ($usernames as $u) { ?>"<?=trim($u['username'])?>",<?php } ?>
		];
		var username = $.trim($('.username').val());
		
		if (username) {
			for (i=0;i<usernames.length;i++) {
				if ($.inArray( username, usernames ) >= 0 ) {
					triggerError('Duplicate username - new one assigned');
					var rusername =  username + (1 + Math.floor(Math.random() * 100));
					$('.username').val(rusername).focus();
					break;
					return false;
				}
			}
			return true;
		}
	}
	
	$( function(){
		$(document).on('change blur', '.username', function(){    
			checkUsername();
		})
	})
</script>