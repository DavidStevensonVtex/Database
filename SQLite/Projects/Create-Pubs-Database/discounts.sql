CREATE TABLE discounts
(
   discounttype   varchar(40)       NOT NULL,
   stor_id        char(4) NULL
         REFERENCES stores(stor_id),
   lowqty         smallint              NULL,
   highqty        smallint              NULL,
   discount       dec(4,2)          NOT NULL
)