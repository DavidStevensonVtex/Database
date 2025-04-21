.header on
.output ./stores.psv
select stor_id, stor_name, stor_address, city, state, zip
from stores
order by stor_id ;
.output stdout