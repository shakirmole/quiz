<?php

	class TFAnswers extends model 
	{ 
		var $table = "tfanswers";
		
		function search($qnid='') {
			$sql = "Select * from " . $this->table . " where 1 = 1";
			if ( $qnid ) $sql .= " and questionid = " . $qnid;
			
			return fetchRows($sql);
		}
		
	}

?>