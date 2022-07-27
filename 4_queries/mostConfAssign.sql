
SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
JOIN assistance_requests ON assistance_requests.assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY total_requests DESC;


--below is what I did (it works)
--SELECT assignments.id, name, day, chapter, count(assistance_requests.assignment_id) as total_requests
--FROM assignments
--JOIN assistance_requests ON assistance_requests.assignment_id = assignment_id
--GROUP BY assignments.id
--ORDER BY total_requests DESC