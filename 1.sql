SELECT s.id, s.name, AVG(m.grade) AS avg_grade
FROM students s
JOIN marks m ON s.id = m.student_id
GROUP BY s.id, s.name
ORDER BY avg_grade DESC
LIMIT 5;

/* Знайти 5 студентів із найбільшим середнім балом з усіх предметів. */ 