.mode column
.header on
.nullvalue NULL

-- select au_id, au_lname, zip, length(trim(au_id, '-1234567890')) = 0 AS au_id_is_numeric
-- from authors 
-- where au_lname = 'Stevenson' ;

delete from authors where au_lname = 'Stevenson' ;

insert into authors ( au_id, au_lname, au_fname, zip, contract ) 
VALUES('123-45-6789', 'Stevenson', 'David', NULL, 123 );

insert into authors ( au_id, au_lname, au_fname, zip, contract ) 
VALUES('123-45-6a78', 'Stevenson', 'David', NULL, 123 );

insert into authors ( au_id, au_lname, au_fname, zip, contract ) 
VALUES('123-45-678a', 'Stevenson', 'David', '12a45', 123 );

insert into authors ( au_id, au_lname, au_fname, zip, contract ) 
VALUES('123-45-6789', 'Stevenson', 'David', '12a45', 123 );

insert into authors ( au_id, au_lname, au_fname, zip, contract ) 
VALUES('123-45-6789', 'Stevenson', 'David', '1234a', 123 );

insert into authors ( au_id, au_lname, au_fname, zip, contract ) 
VALUES('1a3-45-6789', 'Stevenson', 'David', '12345', 123 );

insert into authors ( au_id, au_lname, au_fname, zip, contract ) 
VALUES('123a45-6789', 'Stevenson', 'David', '12345', 123 );

insert into authors ( au_id, au_lname, au_fname, zip, contract ) 
VALUES('123-4a-6789', 'Stevenson', 'David', '12345', 123 );

insert into authors ( au_id, au_lname, au_fname, zip, contract ) 
VALUES('123-45a6789', 'Stevenson', 'David', '12345', 123 );

insert into authors ( au_id, au_lname, au_fname, zip, contract ) 
VALUES('123-45-67a9', 'Stevenson', 'David', '12345', 123 );

select au_id, au_lname, zip, length(trim(au_id, '-1234567890')) = 0 AS au_id_is_numeric
from authors 
where au_lname = 'Stevenson' ;

