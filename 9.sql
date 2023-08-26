SELECT DISTINCT s.name AS subject_name
FROM students st
JOIN marks m ON st.id = m.student_id
JOIN subjects s ON m.subject_id = s.id
WHERE st.id = <student_id>;


/* Знайти список курсів, які відвідує студент. */ 