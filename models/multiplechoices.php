<?php

	class MultipleChoices extends model 
	{ 
		var $table = "multiplechoices";
		
		function search($qnid='') {
			$sql = "Select * from " . $this->table . " where 1 = 1";
			if ( $qnid ) $sql .= " and questionid =" . $qnid;

			// echo $sql;
			return fetchRows($sql);
		}
		
	}

?>