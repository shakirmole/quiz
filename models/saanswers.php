<?php

	class SAAnswers extends model 
	{ 
		var $table = "saanswers";
		
		function search($qnid='') {
			$sql = "Select * from " . $this->table . " where 1 = 1";
			if ( $qnid ) $sql .= " and questionid = " . $qnid;
			
			return fetchRows($sql);
		}
		
	}

?>