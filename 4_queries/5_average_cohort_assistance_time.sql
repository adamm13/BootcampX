SELECT cohort_name as cohort.name, avg(assistance_requests.completed_at - assistance_requests.started_at)
FROM cohorts
JOIN assistance_requests on cohort_id = cohort.id
ORDER BY avg DESC;



SELECT avg(assistance_requests.completed_at - assistance_requests.started_at) AS average_assistance_request_duration
FROM assistance_requests
WHERE assistance_requests.completed_at IS NOT NULL;
