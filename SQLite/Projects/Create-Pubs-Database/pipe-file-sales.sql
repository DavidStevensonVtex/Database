.header on
.output ./sales.psv
select stor_id, ord_num, ord_date, qty, payterms, title_id
from sales
order by ord_date, ord_num, stor_id ;
.output stdout