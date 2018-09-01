<?php

	class QuizQuestions extends model 
	{ 
		var $table = "quizquestions";
		
		function search($quizid='',$sectionid='') {
			$sql = "Select qq.*, t.name as type from " . $this->table . " as qq
					inner join types as t on t.id = qq.typeid
					where 1 = 1";
			if ( $quizid ) $sql .= " and qq.quizid = " . $quizid;
			if ( $sectionid ) $sql .= " and qq.sectionid = " . $sectionid;
			
			$sql .= " order by qq.sortno asc";
			
			// echo $sql;
			return fetchRows($sql);
		}
		
		function getSortNo($quizid,$sectionid) {
			$sql = "select IFNULL(max(qq.sortno),0)+1 as sortno from quizquestions as qq
					where 1=1 ";
					
			if ($quizid) $sql .= " and qq.quizid = ".$quizid;
			if ($sectionid) $sql .= " and qq.sectionid = ".$sectionid;
			return fetchRow($sql);
		}
		
	}

?>