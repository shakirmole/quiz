<html>
<head>
	<title><?=$title?></title>
	<link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/metro.css">
    <link rel="stylesheet" href="css/metro-icons.css">
    <script src="js/jquery.min.js"></script>
    <!-- Metro UI CSS JavaScript plugins -->
    <script src="js/metro.js"></script>
</head>
<body class="metro">
<? 
	define('BkgText','bg-darkCyan fg-white');
?>

<div id="container_login row">
	<form method="post" action="<?=url('authenticate','dologin')?>">
	<table class="table border" style="width:275px;margin:0 auto;margin-top: 50px">
		<tr>
			<th class="caption <?=BkgText?>">LOGIN</th>
		</tr>
		<tr>
            <td class="no-padding" style="padding-left:5px !important;">
				<div class="input-control modern text iconic no-margin-top">
					<input type="text" name="username" value="<?=$username?>">
					<span class="informer">Please enter your username</span>
					<span class="placeholder">Username</span>
					<span class="icon mif-user"></span>
				</div>
			</td>
		</tr>
		<tr>
            <td class="no-padding" style="padding-left:5px !important;">
				<div class="input-control modern text iconic no-margin-top">
					<input type="password" name="password" value="">
					<span class="informer">Please enter your password</span>
					<span class="placeholder">Password</span>
					<span class="icon mif-lock"></span>
				</div>
			</td>
		</tr>
		<tr>
			<td align="center">
                <input type="submit" class="<?=BkgText?>" value="Login">
            </td>
		</tr>
	</table>
	
	</form>	
</div>

<script type='text/javascript'>
	function triggerError(msg, o) {
		$.Notify({
			content: msg,
			style: {background:'#ff2d19',color:'white'}
		});	
		return false;
	}
	
	function triggerMessage(msg, o) {
		$.Notify({
			content: msg,
			style: {background:'#7ad61d',color:'white'}
		});
		return false;
	}

    $(function(){
        try {
            <?php if ( $error ) { echo 'triggerError("'.$error.'",null)'; } ?>;
            <?php if ( $message ) { echo 'triggerMessage("'.$message.'",null)'; } ?>;
        }
        catch (e) {}
    });
</script>
</body>
</html>