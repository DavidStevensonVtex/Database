-- CREATE [UNIQUE] INDEX index_name 
-- ON table_name(column_list);

CREATE INDEX employee_ind ON employee(lname, fname, minit)

GO

CREATE INDEX aunmind ON authors (au_lname, au_fname)
GO
CREATE INDEX sales_titleidind ON sales (title_id)
GO
CREATE INDEX titleind ON titles (title)
GO
CREATE INDEX auidind ON titleauthor (au_id)
GO
CREATE INDEX titleauthor_titleidind ON titleauthor (title_id)
GO
CREATE INDEX roysched_titleidind ON roysched (title_id)