SELECT t.id AS teacher_id, t.name AS teacher_name, AVG(m.grade) AS avg_grade
FROM teachers t
JOIN subjects s ON t.id = s.teacher_id
JOIN marks m ON s.id = m.subject_id
WHERE t.id = <teacher_id>
GROUP BY t.id, t.name;


/* Знайти середній бал, який ставить певний викладач зі своїх предметів. */ 