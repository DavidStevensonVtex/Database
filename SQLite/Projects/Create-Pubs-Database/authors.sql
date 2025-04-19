CREATE TABLE authors
(
   au_id          varchar(11)
         CONSTRAINT Authors_au_id_Constraint PRIMARY KEY
         CHECK(length(trim(au_id, '-1234567890')) = 0 AND substr(au_id, 4, 1) = '-'),

   au_lname       varchar(40)       NOT NULL,
   au_fname       varchar(20)       NOT NULL,
   phone          char(12)          NOT NULL
         DEFAULT ('UNKNOWN'),
   address        varchar(40)           NULL,
   city           varchar(20)           NULL,
   state          char(2)               NULL,
   zip            char(5)               NULL
         CONSTRAINT Author_Zip_Constraint
         CHECK(zip IS NULL OR length(trim(zip, '1234567890')) = 0),
   contract       INTEGER               NOT NULL
)