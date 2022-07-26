--SELECT students.name as student_name, email, cohorts.name as cohort_name
--FROM students LEFT OUTER JOIN cohorts ON cohorts.id = cohort_id;

--SELECT students.name as student_name, cohorts.name as cohort_name, cohorts.start_date as cohort_start_date, students.start_date as student_start_date
--FROM students JOIN cohorts ON NOT cohorts.id = cohort_id;
--ORDERD BY cohorts.start_date;

--SELECT students.name, cohorts.name, cohorts.start_date as cohort_start_date, students.start_date as student_start_date
--FROM students
--JOIN cohorts ON cohort_id = cohorts.id
--WHERE cohorts.start_date != students.start_date
--ORDER BY cohort_start_date;

--SELECT count(assignment_submissions.*) as total_submissions
--FROM assignment_submissions;

SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
GROUP BY students.name;