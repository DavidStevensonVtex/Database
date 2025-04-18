CREATE TABLE sales
(
   stor_id        char(4)           NOT NULL
         REFERENCES stores(stor_id),
   ord_num        varchar(20)       NOT NULL,
   ord_date       datetime          NOT NULL,
   qty            smallint          NOT NULL,
   payterms       varchar(12)       NOT NULL,
   title_id       varchar(6)
         REFERENCES titles(title_id),
   CONSTRAINT UPKCL_sales PRIMARY KEY (stor_id, ord_num, title_id)
)