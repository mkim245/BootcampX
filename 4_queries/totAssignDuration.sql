SELECT assignments.day as day, count(assignments.name) as number_of_assigments, sum(assignments.duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;

--below is answer
--SELECT day, count(*) as number_of_assignments, sum(duration) as duration
--FROM assignments
--GROUP BY day
--ORDER BY day;