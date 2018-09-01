<?php

	class LongAnswers extends model 
	{ 
		var $table = "longanswers";
		
		function search($qnid='') {
			$sql = "Select * from " . $this->table . " where 1 = 1";
			if ( $qnid ) $sql .= " and questionid =" . $qnid;
			
			// echo $sql;
			return fetchRows($sql);
		}
		
	}

?>