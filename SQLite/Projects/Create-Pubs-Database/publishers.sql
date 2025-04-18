CREATE TABLE publishers
(
   pub_id         char(4)           NOT NULL
         CONSTRAINT UPKCL_pubind PRIMARY KEY 
         CHECK (pub_id in ('1389', '0736', '0877', '1622', '1756')
            OR pub_id like '99[0-9][0-9]'),
   pub_name       varchar(40)           NULL,
   city           varchar(20)           NULL,
   state          char(2)               NULL,
   country        varchar(30)           NULL
         DEFAULT('USA')
)