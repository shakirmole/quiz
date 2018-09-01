<?php

	class Types extends model 
	{ 
		var $table = "types";
		
		function search($name='') {
			$sql = "Select * from " . $this->table . " where 1 = 1";
			if ( $name ) $sql .= " and name like '%" . $name . "%'";
			
			return fetchRows($sql);
		}
		
	}

?>