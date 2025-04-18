CREATE TABLE titleauthor
(
   au_id          id
         REFERENCES authors(au_id),

   title_id       tid
         REFERENCES titles(title_id),
   au_ord         tinyint               NULL,
   royaltyper     int                   NULL,

   CONSTRAINT UPKCL_taind PRIMARY KEY (au_id, title_id)
)