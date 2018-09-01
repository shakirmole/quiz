<? if (!$user) $user['status'] = 1; ?>
<h3> Add User </h3>
<form enctype="multipart/form-data" method="post" <?=VALIDATEFORM?> <?=windowOnSubmit('users','user_save','checkUsername();')?>>
	<?=insertHiddenInput('id',$user['id'])?>
	
	<?=insertTextInput('Name','user[name]',$user['name'],'','Enter the users\'s name','text',1,'required||Name is required')?><br>
	
	<?=insertTextInput('Email Address','user[email]',$user['email'],'','Enter the users\'s email','email',1,'email||Enter the correct email address')?><br>
	
	<?=insertTextInput('Position','user[position]',$user['position'],'','Enter the users\'s position','text',1,'required||Position is required')?><br>
	
	<?=insertCheckboxInput('Admin','user[admin]',1,'','Is an administrator','switch',$user['admin'].'|1','','place-right')?>
	<?=insertCheckboxInput('Active','user[status]',1,'','Is an active user','switch',$user['status'].'|1','','place-right')?><br>

	<?=insertTextInput('Username','user[username]',$user['username'],'username','Enter a unique username','text',1,'required||Username is required')?><br>
	
	<?=insertTextInput('Password','user[password]','','','Enter a strong password','password',1,'required||Password is required')?><br>
	
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
	
	$( function() {
		$('.username').blur( function() {
			checkUsername();
		});
	})
</script>