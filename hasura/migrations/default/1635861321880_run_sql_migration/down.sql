-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- update artworks a set bid_id = (select id from activebids where type='bid' and artwork_id =  a.id order by amount desc limit 1);
