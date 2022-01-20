select department_name from departments
where id in
(select distinct department_id from employment
where employee_id = (select id from employees where full_name = 'Saadat Kasymova')
 and (date_started between cast('2011-01-01' as date) and cast('2012-03-04' as date)));
