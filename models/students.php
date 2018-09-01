<?php

	class Students extends model 
	{ 
		var $table = "students";
	
		function search($schoolid='',$name='',$limit='') {
			$sql = "Select s.*, g.name as grade, d.name as division, u.status, u.username from " . $this->table . " as s	
					inner join users as u on u.id = s.userid
					INNER JOIN grades as g on g.id = s.gradeid
					INNER JOIN divisions as d on d.id = s.divisionid
					where 1 = 1";
			if ( $schoolid ) $sql .= " and s.schoolid = " . $schoolid;
			if ( $name ) $sql .= " and s.name like '%" . $name . "%'";
			
			$sql .= " order by s.name";
			if ($limit) $sql .= " LIMIT 0,".$limit;
			// echo $sql;
			return fetchRows($sql);
		}
		
		function getDetails($studentid='',$userid='') {
			$sql = "Select s.*, g.name as grade, d.name as division, u.status, u.username,
					(select count(*) from quizzes as q where q.id in (select sq.quizid from studentquizzes as sq where sq.studentid = s.userid)) as taken,
					(select count(*) from quizclasses as qc
					inner join quizzes as q on q.id = qc.quizid
					where qc.divisionid = s.divisionid and qc.gradeid = s.gradeid and q.id not in (SELECT sq.quizid FROM studentquizzes AS sq WHERE sq.studentid = s.userid)
					) AS ntaken,
					(select count(*) from quizzes as q where q.id in (select sq.quizid from studentquizzes as sq where sq.studentid = s.userid) and q.startdate <= '" . date('Y-m-d H:i') . "' and q.enddate >= '" . date('Y-m-d H:i') . "') as otaken,
					(select count(*) from quizclasses as qc
					inner join quizzes as q on q.id = qc.quizid
					where qc.divisionid = s.divisionid and qc.gradeid = s.gradeid and q.id not in (SELECT sq.quizid FROM studentquizzes AS sq WHERE sq.studentid = s.userid) and q.startdate <= '" . date('Y-m-d H:i') . "' and q.enddate >= '" . date('Y-m-d H:i') . "'
					) AS ontaken
					from " . $this->table . " as s	
					inner join users as u on u.id = s.userid
					INNER JOIN grades as g on g.id = s.gradeid
					INNER JOIN divisions as d on d.id = s.divisionid
					where 1 = 1 ";
			if ( $studentid ) $sql .= " and s.id = " . $studentid;
			if ( $userid ) $sql .= " and s.userid = " . $userid;
			// echo $sql;
			return fetchRow($sql);
		}
		
		function validateStudent($schoolid='',$limit='',$sid='') {
			$sql = "select * from (select u.id from users as u
					inner join students as s on s.userid = u.id
					where s.schoolid = ".$schoolid." and u.status = 1 
					order by u.id asc
					LIMIT 0,".$limit.") as x where id = ".$sid;
			
			return fetchRow($sql);
		}
		
	}

?>