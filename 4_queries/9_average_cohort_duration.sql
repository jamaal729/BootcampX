SELECT AVG(total_duration) AS average_total_duration
FROM(
SELECT cohorts.name as cohort, SUM(completed_at-started_at) AS total_duration
  FROM cohorts
    JOIN students ON students.cohort_id = cohorts.id
    JOIN assistance_requests ON assistance_requests.student_id = students.id
  GROUP BY cohorts.name
  ORDER BY total_duration  ASC
  ) as total_duration;