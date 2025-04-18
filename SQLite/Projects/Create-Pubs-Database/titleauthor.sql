CREATE TABLE titleauthor
(
   au_id          varchar(11)
         REFERENCES authors(au_id),
   title_id       varchar(6)
         REFERENCES titles(title_id),
   au_ord         tinyint               NULL,
   royaltyper     int                   NULL,

   CONSTRAINT UPKCL_taind PRIMARY KEY (au_id, title_id)
)