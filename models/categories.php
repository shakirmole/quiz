<?php

	class Categories extends model 
	{ 
		var $table = "categories";
		
		function search($schoolid='') {
			$sql = "Select * from " . $this->table . " where 1 = 1";
			if ( $schoolid ) $sql .= " and schoolid =" . $schoolid;
			
			// $sql .= " order by sortno asc";
			
			return fetchRows($sql);
		}
		
	}

?>