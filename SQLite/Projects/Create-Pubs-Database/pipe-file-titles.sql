.header on
.output ./titles.psv
select title_id, title, type, pub_id, price, advance, royalty, ytd_sales, notes, pubdate
from titles
order by title_id ;
.output stdout