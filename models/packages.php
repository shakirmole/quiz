<?php

	class Packages extends model 
	{ 
		var $table = "packages";
		
		function search($name='') {
			$sql = "Select * from " . $this->table . " where 1 = 1";
			if ( $name ) $sql .= " and name like '%" . $name . "%'";
			
			return fetchRows($sql);
		}
		
	}

?>