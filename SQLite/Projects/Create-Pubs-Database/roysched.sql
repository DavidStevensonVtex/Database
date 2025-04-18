CREATE TABLE roysched
(
   title_id       varchar(6)
         REFERENCES titles(title_id),
   lorange        int                   NULL,
   hirange        int                   NULL,
   royalty        int                   NULL
)