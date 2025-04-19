--    emp_id         char(9)
--          CONSTRAINT PK_emp_id PRIMARY KEY
--          CONSTRAINT employee_emp_id_check 
--          CHECK( 
--             (
--                   length(trim(substr(emp_id, 1, 3), "-ABCDEFGHIJKLMNOPQRSTUVWXYZ")) = 0 AND
--                   length(trim(substr(emp_id, 4, 5), "1234567890")) = 0 AND
--                   substr(emp_id, 4, 1) != '0' AND
--                   length(trim(substr(emp_id, 9, 1), "MF")) = 0 AND
--                   length(emp_id) = 9
--             )
--             OR
--             (
--                   length(trim(substr(emp_id, 1, 2), "-ABCDEFGHIJKLMNOPQRSTUVWXYZ")) = 0 AND
--                   length(trim(substr(emp_id, 3, 5), "1234567890")) = 0 AND
--                   substr(emp_id, 3, 1) != '0' AND
--                   length(trim(substr(emp_id, 8, 1), "MF")) = 0 AND
--                   length(emp_id) = 8

--             )
--          ),
      --    CONSTRAINT CK_emp_id CHECK (emp_id LIKE
            -- '[A-Z][A-Z][A-Z][1-9][0-9][0-9][0-9][0-9][FM]' or
            -- emp_id LIKE '[A-Z]-[A-Z][1-9][0-9][0-9][0-9][0-9][FM]'),

-- 9 character employee id tests
insert into employee (emp_id, fname, lname) values ( 'AB912345M', 'David', 'Stevenson');
insert into employee (emp_id, fname, lname) values ( 'ABC01234M', 'David', 'Stevenson');
insert into employee (emp_id, fname, lname) values ( 'ABC12a45M', 'David', 'Stevenson');
insert into employee (emp_id, fname, lname) values ( 'ABC12345Z', 'David', 'Stevenson');

-- 8 character employee id tests
insert into employee (emp_id, fname, lname) values ( 'A912345M', 'David', 'Stevenson');
insert into employee (emp_id, fname, lname) values ( 'AB01234M', 'David', 'Stevenson');
insert into employee (emp_id, fname, lname) values ( 'AB12a45M', 'David', 'Stevenson');
insert into employee (emp_id, fname, lname) values ( 'AB12345Z', 'David', 'Stevenson');


select emp_id, fname, lname from employee where lname = 'Stevenson' ;
