<!DOCTYPE html>
<html>
	<head lang="en">
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="keywords" content="">
		<meta name="author" content="Shakir Moledina">
		
		<title><?=$title?></title>
		
		<link rel="stylesheet" href="css/metro.css">
		<link rel="stylesheet" href="css/metro-responsive.css">
		<link rel="stylesheet" href="css/metro-icons.css">
		<link rel="stylesheet" href="css/metro-schemes.css">
		<link rel="stylesheet" href="css/metro-rtl.css">
		<link rel="stylesheet" href="css/metro-colors.css">
		<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
		<link href="css/froala_page.min.css" rel="stylesheet" type="text/css">
		<link href="css/froala_editor.min.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="css/style.css">
		<link href="css/StyleSheet.css" media="screen" rel="stylesheet" type="text/css"/>
		
		<script>
			window.jQuery || document.write('<script src="js/jquery.min.js"><\/script>')
		</script>
		<script src="js/froala_editor.min.js"></script>
		<script src="js/datatables.js"></script>
		<script src="js/select2.min.js"></script>
		
		<!--Validation Scripts-->
		<script language="javascript" src="<?=base_url()?>js/yahoo-min.js" type="text/javascript"></script>
		<script language="javascript" src="<?=base_url()?>js/event-min.js" type="text/javascript"></script>
		<script language="javascript" src="<?=base_url()?>js/jsvalidate.js" type="text/javascript"></script>
		<!--Validation Scripts-->
		
		<!-- Metro UI CSS JavaScript plugins -->
		<script src="js/metro.js"></script>
		
	</head>
	<body class="">
		<div id="maincontent">
			<div class="">
				<?=$menu?>
			</div>
			
			<!--<span class='button mif-apps' style='position:fixed;bottom:10px;right:0px;' onclick="toggleMetroCharm('#sidebar')"></span>-->
			
			<div class=" bg-white padding20">
				<div class="grid">
					<div class="row">
						<div class="cell">
							<?=$content?>
						</div>
					</div>
				</div>
				<div data-role="dialog" data-overlay="true" data-overlay-color="op-dark" data-overlay-click-close="true" id="dialog" class="padding20" data-width="900" data-height="600" style="overflow:auto;width:100%"></div>
			</div>
			
			<!--<div id='sidebar' class='bg-white fg-black' data-role="charm">
				<?=$sidebar?>
			</div>-->
		</div>
	</body>
	
	<? include_once('js/scripts.js');?>
</html>