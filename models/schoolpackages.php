<?php

	class SchoolPackages extends model 
	{ 
		var $table = "schoolpackages";
		
		function search($schoolid='',$status='') {
			$sql = "Select sp.*, s.name as school, IFNULL(p.name,'Default') as package from " . $this->table . " as sp
					left join packages as p on p.id = sp.packageid
					left join schools as s on s.id = sp.schoolid
					where 1 = 1";
			if ( $schoolid ) $sql .= " and sp.schoolid = " . $schoolid;
			if ( is_numeric($status) ) $sql .= " and sp.status = " . $status;
			// echo $sql;
			return fetchRows($sql);
		}
		
	}

?>