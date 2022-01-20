select * from works
where author_id = (select id from authors where full_name = 'Isaac Asimov' );
