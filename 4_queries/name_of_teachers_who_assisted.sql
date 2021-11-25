SELECT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests on teacher_id = teachers.id
JOIN students on students.id = student_id
JOIN cohorts on cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name