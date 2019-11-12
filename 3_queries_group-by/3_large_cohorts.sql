SELECT COUNT(cohort_id) as student_count
FROM students
  JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY students.cohort_id
HAVING COUNT(cohort_id) >= 18
ORDER BY COUNT(cohort_id);