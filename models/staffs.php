<?php

	class Staffs extends model 
	{ 
		var $table = "staffs";
		
		function search($userid='') {
			$sql = "Select t.*, s.name as school, u.status, u.username from " . $this->table . " as t
					inner join users as u on u.id = t.userid
					inner join schools as s on s.id = t.schoolid
					where 1 = 1 ";
			if ( $userid ) $sql .= " and t.userid = " . $userid;
			// echo $sql;
			return fetchRows($sql);
		}
		
		function getDetails($staffid='',$userid='') {
			$sql = "Select t.*, u.status, u.username from " . $this->table . " as t
					inner join users as u on u.id = t.userid
					where 1 = 1";
					if ( $staffid ) $sql .= " and t.id = " . $staffid;
			if ( $userid ) $sql .= " and t.userid = " . $userid;
			// echo $sql;
			return fetchRow($sql);
		}
		
	}

?>