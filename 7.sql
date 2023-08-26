SELECT s.id AS student_id, s.name AS student_name, m.grade
FROM students s
JOIN marks m ON s.id = m.student_id
WHERE s.group_id = <group_id> AND m.subject_id = <subject_id>;


/* Знайти оцінки студентів в окремій групі з певного предмета. */ 