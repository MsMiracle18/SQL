SELECT t.name AS teacher_name, s.name AS subject_name
FROM teachers t
JOIN subjects s ON t.id = s.teacher_id
JOIN marks m ON s.id = m.subject_id
WHERE m.student_id = <student_id>;


/* Список курсів, які певному студенту читає певний викладач. */ 