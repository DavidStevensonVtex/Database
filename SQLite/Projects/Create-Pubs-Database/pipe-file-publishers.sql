.header on
.output ./publishers.psv
select pub_id, pub_name, city, state, country
from publishers
order  by pub_id ;
.output stdout