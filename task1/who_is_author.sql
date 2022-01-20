select * from authors
where id = (select author_id from works where name = 'Foundation');
