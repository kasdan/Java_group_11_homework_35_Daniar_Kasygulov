select * from employees
where id = 
(select manager_id from employment
where employee_id = (select id from employees where full_name = 'Sultan Nurgaziev') 
and (date_started <= '2012-01-01' and date_finished is null));
