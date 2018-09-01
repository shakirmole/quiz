<?php

	class QuizFiles extends model 
	{ 
		var $table = "quizfiles";
		
		function search($quizid='') {
			$sql = "Select * from " . $this->table . " where 1 = 1";
			if ( $quizid ) $sql .= " and quizid = " . $quizid;
			
			return fetchRows($sql);
		}
		
	}

?>