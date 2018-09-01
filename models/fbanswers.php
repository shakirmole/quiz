<?php

	class FBAnswers extends model 
	{ 
		var $table = "fbanswers";
		
		function search($qnid='') {
			$sql = "Select * from " . $this->table . " where 1 = 1";
			if ( $qnid ) $sql .= " and questionid =" . $qnid;
			// echo $sql;
			return fetchRows($sql);
		}
		
	}

?>