.header on
.output ./jobs.psv
select job_id, job_desc, min_lvl, max_lvl
from jobs
order by job_id;
.output stdout