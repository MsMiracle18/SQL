SELECT s.id, s.name, AVG(m.grade) AS avg_grade
FROM students s
JOIN marks m ON s.id = m.student_id
WHERE m.subject_id = <subject_id>
GROUP BY s.id, s.name
ORDER BY avg_grade DESC
LIMIT 1;

/* Знайти студента із найвищим середнім балом з певного предмета.*/ 