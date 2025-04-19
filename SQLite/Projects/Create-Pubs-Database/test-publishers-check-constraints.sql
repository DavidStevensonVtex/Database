--  CHECK (pub_id in ('1389', '0736', '0877', '1622', '1756') OR 
--        (substr(pub_id, 1, 2) = '99' AND length(pub_id) = 4 AND 
--           length(trim(pub_id, "1234567890")) = 0 )),
--    CHECK (pub_id in ('1389', '0736', '0877', '1622', '1756')
--       OR pub_id like '99[0-9][0-9]'),

-- Commented tests generate UNIQUE constraint error: UNIQUE constraint failed: publishers.pub_id
-- insert into publishers (pub_id) values ('1389');
-- insert into publishers (pub_id) values ('0736');
-- insert into publishers (pub_id) values ('0877');
-- insert into publishers (pub_id) values ('1622');
-- insert into publishers (pub_id) values ('1756');
insert into publishers (pub_id) values ('9912');

-- Following tests should raise constraint errors
insert into publishers (pub_id) values ('1234');
insert into publishers (pub_id) values ('12345');
insert into publishers (pub_id) values ('99a9');