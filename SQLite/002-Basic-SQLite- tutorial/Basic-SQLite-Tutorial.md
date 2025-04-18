# Basic SQLite Tutorial

## Section 1. Simple query

### [SQLite Select](https://www.sqlitetutorial.net/sqlite-select/)

#### Simple uses of SELECT statement

```
sqlite> SELECT  1 + 1;
1 + 1
-----
2 
```

```
sqlite> SELECT 
   10 / 5, 
   2 * 4 ;
10 / 5  2 * 4
------  -----
2       8 
```

#### Querying data from a table using the SELECT statement

We often use the SELECT statement to query data from one or more tables.

Here’s the syntax of the SELECT statement:

```
SELECT DISTINCT column_list
FROM table_list
  JOIN table ON join_condition
WHERE row_filter
ORDER BY column
LIMIT count OFFSET offset
GROUP BY column
HAVING group_filter;
```

The SELECT statement is the most complex statement in SQLite. To make it easier to understand each part, we will break the SELECT statement into multiple easy-to-understand tutorials.

* Use the [ORDER BY](https://www.sqlitetutorial.net/sqlite-order-by/) clause to sort the result set.
* Use the [DISTINCT](https://www.sqlitetutorial.net/sqlite-distinct/) clause to query unique rows in a table.
* Use the [WHERE](https://www.sqlitetutorial.net/sqlite-where/) clause to filter rows in the result set.
* Use the [LIMIT OFFSET](https://www.sqlitetutorial.net/sqlite-limit/) clause to constrain the number of rows returned.
* Use the [INNER JOIN](https://www.sqlitetutorial.net/sqlite-inner-join/) or [LEFT JOIN](https://www.sqlitetutorial.net/sqlite-left-join/) to query data from multiple tables using join.
* Use the [GROUP BY](https://www.sqlitetutorial.net/sqlite-group-by/) clause to group rows into groups and apply [aggregate functions](https://www.sqlitetutorial.net/sqlite-aggregate-functions/) to each group.
* Use the [HAVING](https://www.sqlitetutorial.net/sqlite-having/) clause to filter groups.

```
SELECT column_list
FROM table;
```

![tracks schema](https://www.sqlitetutorial.net/wp-content/uploads/2018/11/tracks.png)

```
SELECT
	trackid,
	name,
	composer,
	unitprice
FROM
	tracks;
```

To get data from all columns, you specify the columns of the tracks table in the SELECT clause as follows:

```
SELECT
	trackid,
	name,
	albumid,
	mediatypeid,
	genreid,
	composer,
	milliseconds,
	bytes,
	unitprice
FROM
	tracks;
```

For a table with many columns, the query would be so long that time-consuming to type. To avoid this, you can use the asterisk (*), which is the shorthand for all columns of the table as follows:

`SELECT * FROM tracks;`

You should use the asterisk (*) for testing purposes only, not in the application development.