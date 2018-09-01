<?php

	class QuizClasses extends model 
	{ 
		var $table = "quizclasses";
		
		function search($quizid='') {
			$sql = "Select qc.*, g.name as grade, d.name as division from " . $this->table . " as qc
					inner join grades as g on g.id = qc.gradeid
					inner join divisions as d on d.id = qc.divisionid
					where 1 = 1";
			if ( $quizid ) $sql .= " and qc.quizid = " .$quizid;
			
			return fetchRows($sql);
		}
		
		function getStudents($quizid='') {
			$sql = "select s.* from quizclasses as qc
					inner join quizzes as q on q.id = qc.quizid
					inner join students as s on s.divisionid = qc.divisionid and s.gradeid = qc.gradeid
					where 1=1 ";
			if ( $quizid ) $sql .= " and q.id = " .$quizid;
			
			return fetchRows($sql);
		}
		
	}

?>