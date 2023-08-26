SELECT g.id AS group_id, AVG(m.grade) AS avg_grade
FROM groups g
JOIN students s ON g.id = s.group_id
JOIN marks m ON s.id = m.student_id
WHERE m.subject_id = <subject_id>
GROUP BY g.id;


/* Знайти середній бал у групах з певного предмета. */ 