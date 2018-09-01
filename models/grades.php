<?php

	class Grades extends model 
	{ 
		var $table = "grades";
		
		function search($schoolid='') {
			$sql = "Select * from " . $this->table . " where 1 = 1";
			if ( $schoolid ) $sql .= " and schoolid = " . $schoolid;
			// echo $sql;
			return fetchRows($sql);
		}
		
	}

?>