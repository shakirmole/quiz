<?php

	class QuizSections extends model 
	{ 
		var $table = "quizsections";
		
		function search($quizid='') {
			$sql = "Select qs.*, t.name as type,
					(select sum(marks) from quizquestions where sectionid = qs.id) as marks, 
					(select count(*) from quizquestions where sectionid = qs.id) as qno from " . $this->table . " as qs
					inner join types as t on t.id = qs.typeid
					where 1 = 1";
			if ( $quizid ) $sql .= " and qs.quizid = " . $quizid;
			
			$sql .= " order by qs.sortno asc";
			
			// echo $sql;
			return fetchRows($sql);
		}
		
		function getDetails($id='') {
			$sql = "Select qs.*, t.name as type from " . $this->table . " as qs
					inner join types as t on t.id = qs.typeid
					where 1 = 1";
			if ( $id ) $sql .= " and qs.id = " . $id;
			
			// echo $sql;
			return fetchRow($sql);
		}
		
		function getSortNo($quizid) {
			$sql = "select IFNULL(max(qs.sortno),0)+1 as sortno from quizsections as qs
					where 1=1 ";
					
			if ($quizid) $sql .= " and qs.quizid = ".$quizid;
			return fetchRow($sql);
		}
		
		function getMarks($studentid='',$quizid='') {
			$sql = "select sum(qa.marks) as marks, sum(qq.marks) as total, qs.sortno  from studentquizzes as sq
					inner join quizzes as q on q.id = sq.quizid
					inner join quizsections as qs on qs.quizid = q.id
					inner join quizquestions as qq on qq.sectionid = qs.id
					left join quizanswers as qa on qa.questionid = qq.id and qa.squizid = sq.id
					where sq.studentid = ".$studentid." and sq.quizid = ".$quizid."
					group by qq.sectionid 
					order by qs.sortno ";
										
			return fetchRows($sql);
		}
		
	}

?>