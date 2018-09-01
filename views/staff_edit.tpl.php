<? if (!$staff) $staff['status'] = 1; ?>
<h3> Add Staff </h3>
<form enctype="multipart/form-data" method="post" <?=VALIDATEFORM?> <?=windowOnSubmit('users','staff_save','checkUsername();')?>>
	<?=insertHiddenInput('id',$staff['id'])?>
	<?=insertHiddenInput('userid',$staff['userid'])?>
	
	<?=insertTextInput('Name','staff[name]',$staff['name'],'firstfocus','Enter the staffs\'s name','text',1,'required||Name is required')?><br>
	
	<?=insertTextInput('Mobile','staff[mobile]',$staff['mobile'],'','Enter the staffs\'s mobile','text',1,'required||Mobile is required')?><br>
	
	<?=insertTextInput('Email','staff[email]',$staff['email'],'','Enter the staffs\'s email','email',1,'required||Email is required')?><br>
	
	<?=insertSelect('School','staff[schoolid]','','Select the school',1,0,$schools,'name|id','id|'.$staff['schoolid'])?><br>
	
	<?=insertCheckboxInput('Active','user[status]',1,'','Is an active user','switch',$staff['status'].'|1','','place-right')?><br>

	<?=insertTextInput('Username','user[username]',$staff['username'],'username','Enter a unique username','text',1,'required||Username is required')?><br>
	
	<?=insertTextInput('Password','user[password]','','','Enter a strong password','password',1,'||Password is required')?><br>
	
	<?=insertSaveButton('Save');?>
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