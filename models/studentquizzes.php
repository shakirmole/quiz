<?php

	class StudentQuizzes extends model 
	{ 
		var $table = "studentquizzes";
		
		function search($quizid='',$sid='') {
			$sql = "select sq.*, q.showmarks, q.name, q.startdate, q.enddate, c.name as cat, sc.name as scat,
					(select count(*) from quizquestions where quizid = q.id) as qns, (select sum(marks) from quizquestions where quizid = q.id) as total, s.name as student from studentquizzes as sq
					inner join quizzes as q on q.id = sq.quizid
					inner join categories as c on c.id = q.categoryid
					inner join subcategories as sc on sc.id = q.scategoryid
					inner join users as u on u.id = sq.studentid
					inner join students as s on u.id = s.userid
					where 1=1 ";
			if ( $quizid ) $sql .= " and sq.quizid = " . $quizid;
			if ( $sid ) $sql .= " and sq.studentid = " . $sid;
			// echo $sql;
			$sql .= " order by sq.id";
			
			return fetchRows($sql);
		}
		
		function getAnswers($quizid='',$studentid='') {
			$sql = "select * from (
					( select sq.studentid, qq.quizid, qq.sortno, qa.id, qa.questionid as qid, 'fb' as type, qq.question, qq.marks as total, qa.marks, fba.answer, fb.answer as solution from studentquizzes as sq
					inner join quizanswers as qa on qa.squizid = sq.id
					inner join quizquestions as qq on qq.id = qa.questionid
					inner join fbanswers as fba on fba.answerid = qa.id
					inner join fillblanks as fb on fb.questionid = qq.id and fb.id = fba.fbid
					order by qq.sortno )
					UNION ALL
					( select sq.studentid, qq.quizid, qq.sortno, qa.id, qa.questionid as qid, 'sa' as type, qq.question, qq.marks as total, qa.marks, saa.answer, sa.answer as solution from studentquizzes as sq
					inner join quizanswers as qa on qa.squizid = sq.id
					inner join quizquestions as qq on qq.id = qa.questionid
					inner join saanswers as saa on saa.answerid = qa.id
					inner join shortanswers as sa on sa.questionid = qq.id
					order by qq.sortno )
					UNION ALL
					( select sq.studentid, qq.quizid, qq.sortno, qa.id, qa.questionid as qid, 'la' as type, qq.question, qq.marks as total, qa.marks, laa.answer, la.answer as solution from studentquizzes as sq
					inner join quizanswers as qa on qa.squizid = sq.id
					inner join quizquestions as qq on qq.id = qa.questionid
					inner join laanswers as laa on laa.answerid = qa.id
					inner join longanswers as la on la.questionid = qq.id
					order by qq.sortno )
					UNION ALL
					( select sq.studentid, qq.quizid, qq.sortno, qa.id, qa.questionid as qid, 'mc' as type, qq.question, qq.marks as total, qa.marks, mca.answer, mc.answer as solution from studentquizzes as sq
					inner join quizanswers as qa on qa.squizid = sq.id
					inner join quizquestions as qq on qq.id = qa.questionid
					inner join mcanswers as mca on mca.answerid = qa.id
					inner join multiplechoices as mc on mc.questionid = qq.id and mc.correct = 1
					order by qq.sortno )
					UNION ALL
					( select sq.studentid, qq.quizid, qq.sortno, qa.id, qa.questionid as qid, 'tf' as type, qq.question, qq.marks as total, qa.marks, tfa.answer, tf.answer as solution from studentquizzes as sq
					inner join quizanswers as qa on qa.squizid = sq.id
					inner join quizquestions as qq on qq.id = qa.questionid
					inner join tfanswers as tfa on tfa.answerid = qa.id
					inner join truefalses as tf on tf.questionid = qq.id
					order by qq.sortno )
					UNION ALL
					( select sq.studentid, qq.quizid, qq.sortno, qa.id, qa.questionid as qid, 'mi' as type, qq.question, qq.marks as total, qa.marks, mia.answer, mi.answer as solution from studentquizzes as sq
					inner join quizanswers as qa on qa.squizid = sq.id
					inner join quizquestions as qq on qq.id = qa.questionid
					inner join mianswers as mia on mia.answerid = qa.id
					inner join matchingitems as mi on mi.questionid = qq.id and mia.miid = mi.id
					order by qq.sortno )
					) as x
					where 1=1 ";
			if ( $quizid ) $sql .= " and quizid = " . $quizid;
			if ( $studentid ) $sql .= " and studentid = " . $studentid;
			// echo $sql;
			$sql .= " order by sortno asc";
			
			return fetchRows($sql);
		}
		
	}

?>