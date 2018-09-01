<?php

	class LAAnswers extends model 
	{ 
		var $table = "laanswers";
		
		function search($qnid='') {
			$sql = "Select * from " . $this->table . " where 1 = 1";
			if ( $qnid ) $sql .= " and questionid = " . $qnid;
			
			return fetchRows($sql);
		}
		
	}

?>