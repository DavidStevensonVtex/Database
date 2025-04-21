.header on
.output ./authors.psv
select au_id, au_lname, au_fname, phone, address, city, state, zip, contract
from authors
order by au_lname, au_fname;
.output stdout