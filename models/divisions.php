<?php

	class Divisions extends model 
	{ 
		var $table = "divisions";
		
		function search($schoolid='') {
			$sql = "Select * from " . $this->table . " where 1 = 1";
			if ( $schoolid ) $sql .= " and schoolid = " . $schoolid;
			// echo $sql;
			return fetchRows($sql);
		}
		
	}

?>