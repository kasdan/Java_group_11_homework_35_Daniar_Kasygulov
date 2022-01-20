select * from employees
where id = 
(select distinct employee_id from employment
where manager_id = (select id from employees where full_name = 'Daniar Kasygulov') 
and (date_started <= '2012-01-01' and date_finished is null));
