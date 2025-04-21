.header on
.output ./titleauthor.psv
select au_id, title_id, au_ord, royaltyper
from titleauthor 
order by au_id ;
.output stdout