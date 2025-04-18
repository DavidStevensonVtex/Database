CREATE TABLE titles
(
   title_id       varchar(6)
         CONSTRAINT UPKCL_titleidind PRIMARY KEY,
   title          varchar(80)       NOT NULL,
   type           char(12)          NOT NULL
         DEFAULT ('UNDECIDED'),
   pub_id         char(4)               NULL
         REFERENCES publishers(pub_id),
   price          money                 NULL,
   advance        money                 NULL,
   royalty        int                   NULL,
   ytd_sales      int                   NULL,
   notes          varchar(200)          NULL,
   pubdate        datetime          NOT NULL
         DEFAULT (getdate())
)