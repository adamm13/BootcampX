SELECT cohorts.name, avg(completed_at - started_at) as avg_assistance_time
FROM cohorts
JOIN students on cohorts.id = cohort_id
JOIN assistance_requests on students.id = student_id
GROUP BY cohorts.name
ORDER BY avg_assistance_time DESC
LIMIT 1;