.header on
.output ./discounts.psv
select discounttype, stor_id, lowqty, highqty, discount
from discounts
order by discounttype, stor_id;
.output stdout