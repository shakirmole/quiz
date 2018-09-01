<h3> User Rights </h3>
<form enctype="multipart/form-data" <?=VALIDATEFORM?>>
	
	<input type="hidden" name="id" value="<?=$id?>">
	<div class="treeview" id="tree" data-role="">
		<ul>
			<? foreach ($rights as $mname=>$right) { 
				if ($right['subs']) { ?>
			<li data-mode="checkbox" data-name="" class="node collapsed">
				<span class="leaf"><?=$mname?></span>
				<span class="node-toggle"></span>
				<ul>
					<? foreach ($right['subs'] as $sname=>$sub) { 
						if ($sub['usid']) $checked = 'checked';
						else $checked = '';
					?>
					<li data-mode="checkbox" data-name="rights[<?=$right['menuid']?>][<?=$sub['submenuid']?>]" data-value="1" data-checked="<?=$checked?>">
						<span class="leaf"><?=$sname?></span>
					</li>
					<? } ?>
				</ul>
			</li>
			<? 	} else { 
				$checked = $right['checked'];
			?>
			<li data-mode="checkbox" data-name="rights[<?=$right['menuid']?>][0]" data-value="1" data-checked="<?=$checked?>">
				<span class="leaf"><?=$mname?></span>
			</li>
			<? } 
			} ?>
		</ul>
	</div>

	<?=insertSaveButton('Save','users','user_rights_save','place-right');?>
</form>

<script>
	$( function() {  
		$('#tree').treeview();
		$('#tree').find('li').each ( function() {
			if ($(this).data('checked')=='checked') {
				$(this).find('input').click();
				$(this).find('input').click();
			}
		})
	})
</script>