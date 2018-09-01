<?php

	class Quizzes extends model 
	{ 
		var $table = "quizzes";
		
		function search($schoolid='',$status='') {
			$sql = "Select q.*, c.name as cat, s.name as scat,
					(select count(*) from quizquestions where quizid = q.id) as qns, (select sum(marks) from quizquestions where quizid = q.id) as marks,
					(select count(*) from students as s	where s.userid in (select studentid from studentquizzes where quizid = q.id) and s.schoolid = ".$schoolid.") as taken,
					(select count(*) from students as s	where s.userid not in (select studentid from studentquizzes where quizid = q.id) and s.schoolid = ".$schoolid.") as ntakena,
					(select count(*) from students as st
					inner join quizclasses as qc on qc.divisionid = st.divisionid and qc.gradeid = st.gradeid
					where qc.quizid = q.id and st.schoolid = ".$schoolid." and st.userid not in (select studentid from studentquizzes where quizid = q.id)) as ntaken
					from " . $this->table . " as q
					inner join categories as c on c.id = q.categoryid
					inner join subcategories as s on s.id = q.scategoryid
					where 1 = 1";
					if ( $schoolid ) $sql .= " and q.schoolid = " . $schoolid;
			if ( $status == 'started' ) $sql .= " and q.startdate <= '" . date('Y-m-d H:i') . "' and q.enddate >= '" . date('Y-m-d H:i') . "'";
			if ( $status == 'upcoming' ) $sql .= " and q.startdate > '" . date('Y-m-d H:i') . "'";
			if ( $status == 'now' ) $sql .= " and q.startdate = DATE_FORMAT(NOW(), '%Y-%m-%d %k:%i')";
			if ( $status == 'endnow' ) $sql .= " and q.enddate = DATE_FORMAT(NOW(), '%Y-%m-%d %k:%i')";
			
			$sql .= " order by q.id desc";
			// echo $sql;
			return fetchRows($sql);
		}
		
		function getDetails($id='',$schoolid='') {
			$sql = "Select q.*, c.name as cat, s.name as scat from " . $this->table . " as q
					inner join categories as c on c.id = q.categoryid
					inner join subcategories as s on s.id = q.scategoryid
					where 1 = 1";
			if ( $id ) $sql .= " and q.id = " . $id;
			if ( $schoolid ) $sql .= " and q.schoolid = " . $schoolid;
			
			// $sql .= " order by sortno asc";
			
			return fetchRow($sql);
		}
		
	}

?>