CREATE TABLE employee
(
   emp_id         empid
         CONSTRAINT PK_emp_id PRIMARY KEY
         CONSTRAINT CK_emp_id CHECK (emp_id LIKE
            '[A-Z][A-Z][A-Z][1-9][0-9][0-9][0-9][0-9][FM]' or
            emp_id LIKE '[A-Z]-[A-Z][1-9][0-9][0-9][0-9][0-9][FM]'),
   fname          varchar(20)       NOT NULL,
   minit          char(1)               NULL,
   lname          varchar(30)       NOT NULL,
   job_id         smallint          NOT NULL
         DEFAULT 1
         REFERENCES jobs(job_id),
   job_lvl        tinyint
         DEFAULT 10,
   pub_id         char(4)           NOT NULL
         DEFAULT ('9952')
         REFERENCES publishers(pub_id),
   hire_date      datetime          NOT NULL
         DEFAULT (getdate())
)