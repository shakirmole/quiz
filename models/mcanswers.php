<?php

	class MCAnswers extends model 
	{ 
		var $table = "mcanswers";
		
		function search($qnid='') {
			$sql = "Select * from " . $this->table . " where 1 = 1";
			if ( $qnid ) $sql .= " and questionid = " . $qnid;
			
			return fetchRows($sql);
		}
		
	}

?>