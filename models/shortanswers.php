<?php

	class ShortAnswers extends model 
	{ 
		var $table = "shortanswers";
		
		function search($qnid='') {
			$sql = "Select * from " . $this->table . " where 1 = 1";
			if ( $qnid ) $sql .= " and questionid =" . $qnid;
			
			// echo $sql;
			return fetchRows($sql);
		}
		
	}

?>