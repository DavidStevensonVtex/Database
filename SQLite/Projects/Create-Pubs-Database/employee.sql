CREATE TABLE employee
(
   emp_id         char(9)
         CONSTRAINT PK_emp_id PRIMARY KEY
         CONSTRAINT employee_emp_id_check 
         CHECK( 
            (
                  length(trim(substr(emp_id, 1, 3), "-ABCDEFGHIJKLMNOPQRSTUVWXYZ")) = 0 AND
                  length(trim(substr(emp_id, 4, 5), "1234567890")) = 0 AND
                  substr(emp_id, 4, 1) != '0' AND
                  length(trim(substr(emp_id, 9, 1), "MF")) = 0 AND
                  length(emp_id) = 9
            )
            OR
            (
                  length(trim(substr(emp_id, 1, 2), "-ABCDEFGHIJKLMNOPQRSTUVWXYZ")) = 0 AND
                  length(trim(substr(emp_id, 3, 5), "1234567890")) = 0 AND
                  substr(emp_id, 3, 1) != '0' AND
                  length(trim(substr(emp_id, 8, 1), "MF")) = 0 AND
                  length(emp_id) = 8

            )
         ),
      --    CONSTRAINT CK_emp_id CHECK (emp_id LIKE
            -- '[A-Z][A-Z][A-Z][1-9][0-9][0-9][0-9][0-9][FM]' or
            -- emp_id LIKE '[A-Z]-[A-Z][1-9][0-9][0-9][0-9][0-9][FM]'),
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
         DEFAULT CURRENT_TIMESTAMP
)