CREATE TABLE pub_info
(
   pub_id         char(4)           NOT NULL
         REFERENCES publishers(pub_id)
         CONSTRAINT UPKCL_pubinfo PRIMARY KEY,
   logo           image                 NULL,
   pr_info        text                  NULL
)