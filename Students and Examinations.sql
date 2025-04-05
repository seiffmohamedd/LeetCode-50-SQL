SELECT students.student_id, students.student_name, subjects.subject_name , count(examinations.student_id) as attended_exams
FROM students
CROSS JOIN subjects
left join examinations
on students.student_id = examinations.student_id and subjects.subject_name = examinations.subject_name
GROUP BY students.student_id, students.student_name, subjects.subject_name
order by student_id , subject_name asc;