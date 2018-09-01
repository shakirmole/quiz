<?php

	class UserRights extends model 
	{ 
		var $table = "userrights";
		
		function getUserRights($userid="") {
			$sql = "select m.name as mname, m.module as mmod, m.action as mact, m.id as menuid, u.menuid as umid,
						   s.name as sname, s.module as smod, s.action as sact, s.id as submenuid, u.submenuid as usid
					from menus as m
					left join submenus as s on s.menuid = m.id and s.status = 1
					left join userrights as u on u.userid = ".$userid." and u.menuid = m.id and (u.submenuid = 0 or u.submenuid = s.id)
					where m.status = 1
					order by m.sortno, s.sortno";
			
			return fetchRows($sql);
		}
	}

?>