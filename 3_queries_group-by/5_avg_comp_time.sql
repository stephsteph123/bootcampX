SELECT students.name as students, AVG(assignment_submissions.duration) as average_assignment_duration 
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE end_date IS NULL
GROUP BY students
ORDER BY average_assignment_duration DESC;