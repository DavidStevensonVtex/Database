.header on
.output ./roysched.psv
select title_id, lorange, hirange, royalty
from roysched
order by title_id ;
.output stdout