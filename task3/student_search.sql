select * from lesson_attendance
where student_id = (select id from students where full_name = 'Daniar Kasygulov')