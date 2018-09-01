<?
    define('ElementHover','bg-hover-black');
?>
<nav class="app-bar <?=TableHead?>" data-role="appbar">
	<a href="?action=index" class="app-bar-element no-pc">Admin Panel</a>
	<ul class="app-bar-menu">
		<? foreach ($_SESSION['menus'] as $mname=>$menu) { 
			if ($menu['subs']) { ?>
			<li class="<?=ElementHover?>">
				<a class="dropdown-toggle spacemenu <?=ElementHover?>" href="#">
				<?=$mname?>
				</a>
				<ul class="d-menu" data-role="dropdown">
					<? foreach ($menu['subs'] as $sname=>$sub) { ?>
						<li class="bg-<?=COLOR?>"><a class='fg-white' href='<?=url($sub['smod'],$sub['sact'])?>'><?=$sname?></a></li>
					<? } ?>
				</ul>
			</li>
			<? } else { ?>
			<li>
				<a class='<?=ElementHover?>' href="<?=url($menu['module'],$menu['action'])?>"><?=$mname?></a>
			</li>
			<? }
		} ?>
		<? if(USERTYPE == 'admin') { ?>
			<li>
				<a class='<?=ElementHover?>' href="?module=settings&action=index">Settings</a>
			</li>
		<? } ?>
	</ul>
	<? if ($_SESSION['member']) { ?>
	<ul class="app-bar-menu place-right">
		<li class='<?=ElementHover?> align-right' style='min-width:245px;'>
			<a class="dropdown-toggle spacemenu <?=ElementHover?> place-right" href="#">
			<?=USERFULLNAME?> <? if ($_SESSION['member']['class']) echo '- '. $_SESSION['member']['class']?>
			</a>
			<ul class="d-menu" data-role="dropdown">
				<li class="bg-<?=COLOR?>"><a class='fg-white' href="?module=settings&action=user_settings">My Settings</a></li>
				<li class="bg-<?=COLOR?>"><a class='fg-white' href="?module=authenticate&action=logout">Logout</a></li>
			</ul>
		</li>
	</ul>
	<? } else { /*?>
	<ul class="app-bar-menu place-right">		
		<li>
			<a class='<?=ElementHover?>' href="?module=home&action=authenticate">Login/Register</a>
		</li>
	</ul>
	<? */ } ?>
</nav>