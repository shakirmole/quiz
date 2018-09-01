<?php	
	
	function loadExcelTemplate($filename, $tpl, $data) {
		include 'lib/excel/Worksheet.php';
		include 'lib/excel/Workbook.php';
		extract ( (array) $data );
		header("Content-type: application/vnd.ms-excel");
		header("Content-Disposition: attachment; filename=$filename".".xls");
		header("Expires: 0");
		header("Cache-Control: must-revalidate, post-check=0,pre-check=0");
		header("Pragma: public");
		
		// Creating a workbook
		$workbook = new Workbook("-");
		
		$header =& $workbook->add_format();
		$header->set_size(10);
		$header->set_bold(true);
		$header->set_align('left');
		$header->set_color('white');
		$header->set_pattern();
		$header->set_fg_color('black');
		
		@include 'templates/excel/' . $tpl ;		
		
		$workbook->close();
		die();
	}
	
	function loadTemplate($tpl, $data=array(), $filename="") {
		global $templateData;
		global $format;
		
		global $module;
		global $action;
		
		if ( $format == 'excel' and file_exists('views/excel/'.$tpl) ) {
			if ( empty($filename) ) $filename = 'excel_output';
			$filename .= '_' . date('dMy');
			loadExcelTemplate($filename,$tpl,$data);
			} else {
			
			if ( ! empty($data) ) {
				$data = array_merge((array)$data, (array)$templateData);
				$templateData = $data;
			}
			extract ( (array) $data );
			
			
			ob_start();
			@include 'views/' . $tpl ;
			
			// Remove when deploying on Client PC!
			if ( $format == 'excel' ) echo '<script>alert("Excel File Not Available for Download")</script>';
			
			$output = ob_get_contents();
			ob_end_clean();
			return $output;
		}
	}
	
	function cleanInput($str) {
		return trim($str);
	}
	
	function loadDir($dir) {
		global $config;
		if ( is_dir($dir) ) {
			$d = opendir($dir);
			while ($file = readdir($d)) {
				if ( substr($file,-4)=='.php' ) include $dir . $file;
			}
		}
	}
	
	function url($module, $action, $params="") {
		if ( is_array($params) ) {
			$str_params = '';
			foreach($params as $k=>$v) $str_params .= $k .'=' . urlencode($v) . '&';
			$params = $str_params;
			} else {
			if (!empty($params)) $params.='&';
		}
		return '?' . $params . 'module=' . $module . '&action=' . $action;
	}
	
	function base_url() {
		return '';
	}
	
	function getSession($key) {
		$keyParts = explode('.',$key);
		$output = '';
		foreach($keyParts as $keyPart) {
			if ( empty($output) )  $output = $_SESSION[$keyPart];
			else{
				if ( is_array($output) ) {
					$output = $output[$keyPart];
				}	
				if ( is_object($output) ) {
					$output = $output->$keyPart;
				}
			}
		}
		return $output;
	}
	
	function redirect($module, $action, $params="") {
		$url = url($module,$action,$params);
		header('Location: ' . $url);
		die();
	}
	
	function redirectBack() {
		header('Location: ' . $_SERVER['HTTP_REFERER']);
		die();
	}
	
	function getAction() {
		global $action;
		return $action;
	}
	
	function getModule() {
		global $module;
		return $module;
	}
	
	function selected($a,$b,$val1='selected',$val2='') {
		return $a==$b?$val1:$val2;
	}
	
	function fDate($dt, $format='jS F Y') {
		if (strtotime($dt)) return date($format,strtotime($dt));
		else return 'N/A';
	}
	
	function formatN($no, $decimals=2) {
		return number_format($no, $decimals);
	}
	
	function resizeAndUploadImage($uploaddir,$image,$ctrl_imgwidth,$new_imgheight,$name="") { //$image = "array";
		$time = time();
		if ( $image['name'] ) {
			$size = getimagesize($image["tmp_name"]); //check if image is uploaded if it has image size
			if ($size) { //resize image to 200xp width
				$extension = pathinfo($image['name'], PATHINFO_EXTENSION);
				if($extension == "gif")	{ $imgconv = imagecreatefromgif($image["tmp_name"]);	}
				elseif($extension == "jpg" || $extension == "jpeg")	{ $imgconv = imagecreatefromjpeg($image["tmp_name"]);	}
				else if($extension=="png") { $imgconv = imagecreatefrompng($image["tmp_name"]); }
				list($imgwidth,$imgheight) = getimagesize($image["tmp_name"]); //current image dimensions
				$tmp_img = imagecreatetruecolor($ctrl_imgwidth,$new_imgheight); //determine height
				imagecopyresampled($tmp_img,$imgconv,0,0,0,0,$ctrl_imgwidth,$new_imgheight,$imgwidth,$imgheight); //resize
				imagejpeg($tmp_img,$uploaddir . $time . '_' . strtolower($image['name']),100); //uploading
				imagedestroy($imgconv);
				imagedestroy($tmp_img);		
				return $imageName = $time . '_' . strtolower($image['name']);
			}
		}
	}	
	
	function insertHiddenInput($name,$value,$class='') {
		$code = "<input type='hidden' class='$class' name='$name' value='$value'>";
		
		return $code;
	}
	
	function insertTextInput($label,$name,$value,$class,$title,$type,$fullsize=0,$validate='',$other='',$otherclass="") {
		if ($fullsize) $fullsize = 'full-size';
		
		$label = explode('|',$label); //label and/or placeholder
		if (!$label[1]) $label[1] = $label[0];
		if ($label[0]) $labeltext = "<label> $label[0] </label>";
		
		$validate = explode('|',$validate);
		if ($validate[0]) $valcode = " data-validate-func='$validate[0]' data-validate-arg='$validate[1]' data-validate-hint='$validate[2]' ";
		
		$code = "$labeltext 
		<div class='input-control $type $fullsize $otherclass'> 
		<input type='$type' name='$name' class='$class' title=\"$title\" value=\"$value\" placeholder=\"$label[1]\" $valcode $other> 
		</div>";
		
		return $code;
	}
	
	function insertTextArea($label,$name,$value,$class,$title,$fullsize,$height=200,$validate='',$other='',$otherclass="") {
		if ($fullsize) $fullsize = 'full-size';
		
		$label = explode('|',$label); //label and/or placeholder
		if (!$label[1]) $label[1] = $label[0];
		
		$validate = explode('|',$validate);
		if ($validate[0]) $valcode = " data-validate-func='$validate[0]' data-validate-arg='$validate[1]' data-validate-hint=\"$validate[2]\" ";
		
		$code = "<label> $label[0] </label>
		<div class='input-control textarea $fullsize $otherclass' data-role='input' data-text-max-height='$height'>
		<textarea placeholder=\"$label[1]\" name='$name' class='$class' title=\"$title\" $valcode style='height:$height;margin:0px' $other>$value</textarea>
		</div>";
		
		return $code;
	}
	
	function insertRadioInput($label,$name,$value,$class,$title,$small,$matchdatavalue,$other='',$otherclass="") {
		if ($small) $small = 'small-check';
		$mdv = explode('|',$matchdatavalue);
		$matchvalue = $mdv[0]; $datavalue = $mdv[1];
		
		$code = "<label class='input-control radio $small $otherclass'>
		<input type='radio' name='$name' value=\"$value\" class='$class' ".selected($matchvalue,$datavalue,'checked')." title=\"$title\" $other>
		<span class='check'></span>
		<span class='caption'>$label</span>
		</label>";
		
		return $code;
	}
	
	function insertCheckboxInput($label,$name,$value,$class,$title,$type,$matchdatavalue,$other='',$otherclass="") {
		$mdv = explode('|',$matchdatavalue);
		$matchvalue = $mdv[0]; $datavalue = $mdv[1];
	
		if ($type=='switch') {		
			$code = "<label class='switch $otherclass'>
			<span class='caption'>$label</span> &nbsp;
			<input type='checkbox' name='$name' class='$class' title=\"$title\" ".selected($matchvalue,$datavalue,'checked')." value=\"$value\" $other>
			<span class='check'></span>
			</label>";
		} else if ($type=='normal') {
			$code = "<label class='input-control checkbox $otherclass'>
			<span class='caption'>$label</span>
			<input type='checkbox' name='$name' class='$class' title=\"$title\" ".selected($matchvalue,$datavalue,'checked')." value=\"$value\" $other>
			<span class='check'></span>
			</label>";
		}
		
		return $code;
	}
	
	function insertSelect($label,$name,$class,$title,$fullsize,$firstempty,$data,$datanamevalue,$matchfieldvalue,$validate='',$other='',$otheropt='',$otherclass='') {
		if ($fullsize) $fullsize = 'full-size';
		if ($firstempty) $firstempty = '<option></option>';
		
		$dnv = explode('|',$datanamevalue);
		$dataname = $dnv[0]; $datavalue = $dnv[1];
		
		$mfv = explode('|',$matchfieldvalue);
		$matchfield = $mfv[0]; $matchvalue = $mfv[1];
		
		$validate = explode('|',$validate);
		if ($validate[0]) $valcode = " data-validate-func='$validate[0]' data-validate-arg='$validate[1]' data-validate-hint='$validate[2]' ";
		
		foreach ($data as $r) {
			$options .= "<option value=\"".$r[$datavalue]."\" ".selected($r[$matchfield],$matchvalue,'selected')." $otheropt>".$r[$dataname]."</option>";
		}
		
		if ($label) $label = "<label> $label </label>";
		$code="$label
		<div class='input-control select $fullsize $otherclass'>
		<select name='$name' class='$class' title=\"$title\" $valcode $other>
		$firstempty
		$options
		</select>
		</div>";
		
		return $code;
	}
	
	function insertFileInput($label,$name,$preview,$class,$title,$fullsize) {
		if ($fullsize) $fullsize = 'full-size';
		if ($preview) $preview = "<a href='$preview' target='_blank'>Preview</a>";
		
		$code ="<label> $label </label>
		$preview <br>
		<div class='input-control file $fullsize' data-role='input'>
		<input type='file' class='$class' name='$name' title=\"$title\" value=\"$value\">
		<button class='button'><span class='fg-white mif-folder'></span></button>
		</div>";
		
		return $code;
	}
	
	function insertSaveButton($label,$module='',$action='',$class='',$onclick='') {
		if ($module && $action) $onclick .= "submitForm(this,\"?module=$module&action=$action\");return false;";
		$code = "<input type='submit' class='submit $class' onclick='$onclick' value=\"$label\">";
		
		return $code;
	}
	
	function windowOnSubmit($module='',$action='',$other='') {
		return "data-on-submit=\"$other submitForm(this,'?module=$module&action=$action');return false;\" ";
	}
	
	function sendEmail($to, $subject, $body_text, $body_html, $from, $fromName) {
		$url = 'https://api.elasticemail.com/v2/email/send';

		try{
			$post = array('from' => $from,
			'fromName' => $fromName,
			'apikey' => 'XXXXX',
			'subject' => $subject,
			'to' => $to,
			'bodyHtml' => $body_html,
			'bodyText' => $body_text,
			'isTransactional' => false);
			
			$ch = curl_init();
			curl_setopt_array($ch, array(
				CURLOPT_URL => $url,
				CURLOPT_POST => true,
				CURLOPT_POSTFIELDS => $post,
				CURLOPT_RETURNTRANSFER => true,
				CURLOPT_HEADER => false,
				CURLOPT_SSL_VERIFYPEER => false
			));
			
			$result=curl_exec ($ch);
			curl_close ($ch);
			
			return $result;	
		}
		catch(Exception $ex){
			return $ex->getMessage();
		}  
	}
?>