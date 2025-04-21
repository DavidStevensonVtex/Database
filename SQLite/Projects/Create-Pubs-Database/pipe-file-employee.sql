.header on
.output ./employee.psv
select emp_id, lname, fname, minit, job_id, job_lvl, pub_id, hire_date
from employee
order by lname, fname ;
.output stdout