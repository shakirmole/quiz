<?php

	class QuizAnswers extends model 
	{ 
		var $table = "quizanswers";
		
		function search($quizid='') {
			$sql = "Select qq.*, t.name as type from " . $this->table . " as qq
					inner join types as t on t.id = qq.typeid
					where 1 = 1";
			if ( $quizid ) $sql .= " and qq.quizid = " . $quizid;
			
			$sql .= " order by qq.sortno asc";
			
			// echo $sql;
			return fetchRows($sql);
		}
		
		function getSortNo($quizid) {
			$sql = "select IFNULL(max(qq.sortno),0)+1 as sortno from quizquestions as qq
					where 1=1 ";
					
			if ($quizid) $sql .= " and qq.quizid = ".$quizid;
			return fetchRow($sql);
		}
		
	}

?>