select * from positions
where id = 
(select position_id from employment
where (employee_id = (select id from employees where full_name = 'Saadat Kasymova')) and (date_started >= '2012-01-01'));