select * from works
where category_id = (select id from category where category = 'Fiction');

