select * from category
where id in (select distinct category_id from works where author_id = (select id from authors where full_name = 'Isaac Asimov'))