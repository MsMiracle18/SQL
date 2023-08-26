SELECT t.id AS teacher_id, t.name AS teacher_name, s.name AS subject_name
FROM teachers t
JOIN subjects s ON t.id = s.teacher_id
WHERE t.id = <teacher_id>;


/* Знайти, які курси читає певний викладач. */ 