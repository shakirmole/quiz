<script>
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

function addClasses() {
	$('.table th').addClass('<?=TableHead.' '.TableHeadText?>');
	$('input:button,input:submit,.button,.current').addClass('<?=ButtonBkgText?>');
	$('[class^=mif-]').addClass('fg-<?=COLOR?>');
	$('[class^=app-bar-]').addClass('bg-<?=COLOR?>');
	$('*[data-validate-func="required"]').addClass('bd-red');
	
	$('.sp_button').removeClass('<?=ButtonBkgText?>');
}

function createCalenders() {
	$(".datepicker").datepicker({
		format: "yyyy-mm-dd", // set output format
		effect: "fade", // none, slide, fade
		position: "bottom", // top or bottom,
	});
	
	$(".resdatepicker").datepicker({
		format: "yyyy-mm-dd", // set output format
		effect: "fade", // none, slide, fade
		position: "bottom", // top or bottom,
		minDate: '<?=date('Y-m-d',strtotime('yesterday'))?>'
	});
	
	$(".dobdatepicker").datepicker({
		format: "yyyy-mm-dd", // set output format
		effect: "fade", // none, slide, fade
		position: "bottom", // top or bottom,
		maxDate: '<?=date('Y-m-d')?>'
	});
}

function openWindow(link) {
	dialog = $('#dialog').html('Loading...').data('dialog');
	dialog.open();
	$('#dialog').load(link,function(d){
		dialog.close();
		dialog.open();
	});
}

function print(div) {
	var mywindow = window.open('', 'PRINT', 'height=400,width=600');
	var css = "<link rel='stylesheet' href='css/metro.css' type='text/css' />";
	
    mywindow.document.write('<!DOCTYPE html><html><head><title>' + document.title  + '</title>');
    mywindow.document.write(css);
    mywindow.document.write('</head><body>');
    mywindow.document.write(document.getElementById(div).innerHTML);
    mywindow.document.write('</body></html>');

    mywindow.document.close(); // necessary for IE >= 10
    // mywindow.focus(); // necessary for IE >= 10*/

    mywindow.print();

    return true;
}

function firstFocus() {
	$('.firstfocus').focus();
}

$(function(){
	try {
		<?php if ( $error ) { echo 'triggerError("'.$error.'",null)'; } ?>;
		<?php if ( $message ) { echo 'triggerMessage("'.$message.'",null)'; } ?>;
	}
	catch (e) {}
	
	addClasses();
	createCalenders();
	firstFocus();
	<? if ($autoopen) { ?>
		openWindow('<?=$autoopen?>');
	<? } ?>
	// $('textarea').editable({inlineMode: false})
});

var cmdirect = 1; var cdirect = 1;
function submitForm(form,url) {
	
	if ( FIC_checkForm(form) ) {
		//no errors
		} else {
		triggerError("Please check the highlighted fields");
		return false;
	}
	
	formdata = $(form).closest('form').serialize();	
	
	//replace submit with loading
	if ($('.submit').hasClass('place-right')) var oclass = 'place-right'; else var oclass = '';
	$('.submit').replaceWith('<button onclick="return false;" class="button '+oclass+' warning"><span class="mif-spinner2 mif-ani-spin"></span> Loading</button>');
	
	$.post(url+"&format=json", formdata,function(d){
		CC = $.parseJSON(d);				
		
		if (CC[0].status) {
			triggerMessage(CC[0]['msg']);
			if (cmdirect) {
				$('#maincontent').load(CC[0].mainredirect, function(){
					if (CC[0].redirect && cdirect) openWindow(CC[0].redirect);
				});
				} else {
				if (CC[0].redirect) openWindow(CC[0].redirect);
			}
			
			} else {
			triggerError(CC[0]['msg']);
		}
		
	});
}

function replaceSubmit(form) {
	$(form).find('.submit').replaceWith('<button onclick="return false;" class="button warning"><span class="mif-spinner2 mif-ani-spin"></span> Loading</button>');
}

function notifyOnErrorInput(input){
	var message = input.data('validateHint');
	$.Notify({
		caption: '',
		content: message,
		type: 'alert'
	});
	console.log(input);
	input.focus();
}
</script>