CREATE TABLE jobs
(
   job_id         INTEGER           PRIMARY KEY,
   job_desc       varchar(50)       NOT NULL
         DEFAULT 'New Position - title not formalized yet',
   min_lvl        tinyint           NOT NULL
         CHECK (min_lvl >= 10),
   max_lvl        tinyint           NOT NULL
         CHECK (max_lvl <= 250)
)