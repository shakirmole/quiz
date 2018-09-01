<?php

	class Schools extends model 
	{ 
		var $table = "schools";
		
		function search($name='') {
			$sql = "Select s.*, sp.packageid, sp.maxstd, sp.price, sp.duration, sp.startdate, sp.enddate, sp.status, IFNULL(p.name,'Default') as package from " . $this->table . " as s 
					left join schoolpackages as sp on sp.schoolid = s.id
					left join packages as p on sp.packageid = p.id
					where 1 = 1 and sp.status = 1";
			if ( $name ) $sql .= " and name like '%" . $name . "%'";
			
			$sql .= " order by s.id";
			
			return fetchRows($sql);
		}
		
		function getDetails($id='') {
			$sql = "Select s.*, sp.packageid, sp.maxstd, sp.price, sp.duration, sp.startdate, sp.enddate, sp.status, IFNULL(p.name,'Default') as package from " . $this->table . " as s 
					left join schoolpackages as sp on sp.schoolid = s.id
					left join packages as p on sp.packageid = p.id
					where 1 = 1 and sp.status = 1";
			if ( $id ) $sql .= " and s.id = " . $id;
			
			return fetchRow($sql);
		}
		
	}

?>