-- SELECT teachers.name AS teacher, cohorts.name as cohort
-- FROM assistance_requests
--   JOIN students ON assistance_requests.student_id = students.id
--   JOIN teachers ON assistance_requests.teacher_id = teachers.id
--   JOIN cohorts ON students.cohort_id = cohorts.id
--   JOIN assignments ON assistance_requests.assignment_id = assignments.id
-- WHERE cohorts.name = 'JUL02'
-- GROUP BY teachers.name, cohorts.name
-- ORDER BY teachers.name;


SELECT teachers.name AS teacher, cohorts.name as cohort
FROM teachers
  JOIN assistance_requests ON assistance_requests.teacher_id = teachers.id
  JOIN students ON assistance_requests.student_id = students.id

  JOIN cohorts ON students.cohort_id = cohorts.id
  JOIN assignments ON assistance_requests.assignment_id = assignments.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;