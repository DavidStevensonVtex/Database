# [SQLite Tutorial](https://www.sqlitetutorial.net/)

## [What is SQLite](https://www.sqlitetutorial.net/what-is-sqlite/)

SQLite has the following notable features:

* Self-contained
* Serverless
* Zero-configuration
* Transactional

### Transactional
All transactions in SQLite are fully ACID-compliant, meaning that all queries and changes are Atomic, Consistent, Isolated, and Durable.

### SQLite unique features

SQLite uses dynamic types for tables, meaning you can store any value in any column, regardless of the declared data type.

SQLite allows a single database connection to access multiple database files simultaneously. This feature allows you to join tables in different databases or copy data between databases with a single command.

Additionally, SQLite can create in-memory databases, which is very fast for prototyping and testing.

### When to use SQLite
When you need simplicity, speed, and minimal resources, you might consider SQLite. For example:

* Embedded Apps: SQLite is ideal for apps that need to store data locally without the overhead of separating database servers such as mobile apps and desktop software.
* Local storage: SQLite is suitable for apps that need to store user preferences, settings, or cached data locally.
* Cross-platform apps: Since SQLite runs on multiple platforms, it is suitable for apps that need to run cross-platform.
* Prototyping and development: SQLite does not require a complex setup, making it ideal for quick prototyping, development, and testing.
* Internet of Things (IoT) devices: IoT devices have limited resources. SQLite is very lightweight and is suitable for IoT devices.
* 
### References

* https://www.sqlite.org – SQLite homepage
* https://www.sqlite.org/features.html – SQLite features
* https://www.sqlite.org/copyright.html – SQLite license
* https://www.sqlite.org/docs.html – SQLite documentation

## [SQLite Sample Database](https://www.sqlitetutorial.net/sqlite-sample-database/)

### Introduction to the SQLite sample database

We provide an SQLite sample database named `Chinook`, which is good for practicing with SQLite

The following database diagram shows the `Chinook` database tables and their relationships.

![SQLite Sample Database](https://www.sqlitetutorial.net/wp-content/uploads/2015/11/sqlite-sample-database-color.jpg)

Chinook sample database tables
The Chinook sample database contains 11 tables, as follows:

 * **employees** table stores employee data such as id, last name, first name, etc. It also has a field named ReportsTo to specify who reports to whom.
 * **customers** table stores customer data.
 * **invoices** & invoice_items tables: these two tables store invoice data. The invoices table stores invoice header data and the invoice_items table stores the invoice line items data.
 * **artists** table stores artist data. It is a simple table that contains the id and name.
 * **albums** table stores data about a list of tracks. Each album belongs to one artist, but an artist may have multiple albums.
 * **media_types** table stores media types such as MPEG audio and AAC audio files.
 * **genres** table stores music types such as rock, jazz, metal, etc.
 * **tracks** table stores the data of songs. Each track belongs to one album.
 * **playlists** & playlist_track tables: playlists table stores data about playlists. Each playlist contains a list of tracks. Each track may belong to multiple playlists. The relationship between the playlists and tracks tables is many-to-many. The playlist_track table is used to reflect this relationship.

#### How to connect to SQLite sample database

The sample database file is in ZIP format, so you’ll need to extract it to a directory, such as C:\sqlite\. The file name is chinook.db.

First, open the Command Prompt on Windows or a Terminal on Unix-like systems and navigate to the SQLite directory where the sqlite3 (or sqlite3.exe) file is located.

Second, use the sqlite3 command to connect to the chinook sample database located in the same directory.

`sqlite3 chinook.db`

```
$ sqlite3 chinook.db 
SQLite version 3.40.1 2022-12-28 14:03:47
Enter ".help" for usage hints.
sqlite> .tables
albums          employees       invoices        playlists     
artists         genres          media_types     tracks        
customers       invoice_items   playlist_track
sqlite> 
```

Finally, type the .quit command to exit the sqlite3 tool:

`.quit`

### [SQLite Commands](https://www.sqlitetutorial.net/sqlite-commands/)

First, open your terminal.

Second, type the `sqlite3` command as follows:

```
$ sqlite3
SQLite version 3.40.1 2022-12-28 14:03:47
Enter ".help" for usage hints.
Connected to a transient in-memory database.
Use ".open FILENAME" to reopen on a persistent database.
```

By default, an SQLite session uses an in-memory database. It means that all the changes you make will be gone when the session ends.

#### Getting helps

To show all available sqlite3 commands and their purposes, you use the .help command as follows:

`.help`

#### Quitting sqlite3 tool

To exit the sqlite3 program, you use the .quit command.

`.quit`

#### Creating a new SQLite database

If you launch the sqlite3 with an SQLite database file that does not exist, the sqlite3 tool will create the database.

For example, the following command creates a database named sales in the C:\sqlite\db\ directory:

`sqlite3 c:\sqlite\db\sales.db`

```
$ sqlite3 new.db
SQLite version 3.40.1 2022-12-28 14:03:47
Enter ".help" for usage hints.
sqlite> 
```

#### Opening a SQLite database file using sqlite3
To open an existing database file, you use the .opencommand:

`.open FILENAME`

The FILENAME specifies the SQLite database you want to open.

For example, the following statement opens the chinook.db database located at c:\sqlite\db\chinook.db:

First, launch the sqlite3 tool from your terminal:

sqlite3
Second, open the chinook.db database file:

```
$ sqlite3
SQLite version 3.40.1 2022-12-28 14:03:47
Enter ".help" for usage hints.
Connected to a transient in-memory database.
Use ".open FILENAME" to reopen on a persistent database.
sqlite> .open chinook.db
sqlite> .tables
albums          employees       invoices        playlists     
artists         genres          media_types     tracks        
customers       invoice_items   playlist_track
```
If you want to open a specific database file when connecting to the SQLite database, you use the following command:

`sqlite3 chinook.db`


#### Displaying the current database

To show all databases in the current connection, you use the .databases command.

The .databases command displays at least one database with the name: main. For example, the following command shows all the databases of the current connection:

`.databases`

```
sqlite> .databases
main: /home/dstevenson/Database/SQLite/chinook.db r/w
```

To add a database to the current connection, you use the statement attach databasecommand.

For example, the following command adds the chinook database to the current session.

`attach database "/home/dstevenson/Database/SQLite/chinook.db" AS chinook;`

#### Showing tables in a database
To display all the tables in the current database, you use the .tables command:

.tables
Code language: CSS (css)
The following commands open a new database connection to the chinook database and display the tables:

Step 1. Open the chinook database:

```
$ sqlite3 chinook.db 
sqlite> 
```

Step 2. Show all the tables:

```
sqlite> .tables
albums          employees       invoices        playlists     
artists         genres          media_types     tracks        
customers       invoice_items   playlist_track
```

If you want to find tables based on a specific pattern, you use the .table pattern command. The sqlite3 uses the LIKE operator for pattern matching.

For example, the following statement returns the table that ends with the string es:

```
sqlite> .table '%es'
employees    genres       invoices     media_types
```

#### Showing table structures

To display the structure of a table, you use the .schema TABLE command:

`.schema TABLE`

The TABLE argument can be the table name or a pattern that specifies one or more tables. For example, the following command shows the structure of the albums table:

```
sqlite> .schema albums
CREATE TABLE IF NOT EXISTS "albums"
(
    [AlbumId] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    [Title] NVARCHAR(160)  NOT NULL,
    [ArtistId] INTEGER  NOT NULL,
    FOREIGN KEY ([ArtistId]) REFERENCES "artists" ([ArtistId]) 
                ON DELETE NO ACTION ON UPDATE NO ACTION
);
CREATE INDEX [IFK_AlbumArtistId] ON "albums" ([ArtistId]);
sqlite> 
```

If you omit the TABLE, the .schema command will show the structures of all the tables.

`.schema`

To show the schema and the content of the sqlite_stat tables, you use the .fullschema command.

`.fullschema`

#### Showing indexes

To show all indexes of the current database, you use the .indexes command as follows:

`.indexes`

```
$ sqlite3 chinook.db 
sqlite> .indexes
IFK_AlbumArtistId                  IFK_PlaylistTrackTrackId         
IFK_CustomerSupportRepId           IFK_TrackAlbumId                 
IFK_EmployeeReportsTo              IFK_TrackGenreId                 
IFK_InvoiceCustomerId              IFK_TrackMediaTypeId             
IFK_InvoiceLineInvoiceId           sqlite_autoindex_playlist_track_1
IFK_InvoiceLineTrackId           
sqlite> 
```

If you are unfamiliar with indexes, you can learn about them in the [SQLite indexes tutorial](https://www.sqlitetutorial.net/sqlite-index/).

To show the indexes of a specific table, you use the .indexes TABLE command:

`.indexes TABLE`

For example, to show indexes of the albums table, you use the following command:

`.indexes albums`

```
sqlite> .indexes albums
IFK_AlbumArtistId
```

#### Executing an SQL statement

To execute an SQL statement, you type it in the sqlite3> command and hit the Enter key to start a new line:

sqlite> select *
      > (type the next clause)
As soon as you terminate the SQL statement with a semicolon (;), and hit the Enter key, sqlite3 will execute the statement.

For example:

```
sqlite> select *
   ...> from albums
   ...> order by AlbumID
   ...> limit 3;
1|For Those About To Rock We Salute You|1
2|Balls to the Wall|2
3|Restless and Wild|2
```

The default output is not clear.

#### Formatting query output
To format the output of a query, you execute the following commands:

```
.mode column
.header on
.nullvalue NULL
```

* The .mode command sets the output mode to column.
* The .header command shows the column names in the output.
* The .nullvalue sets the literal string that represents NULL.

If you execute the above query again, you’ll see the nicely formatted output:

```
sqlite> .mode column
sqlite> .header on
sqlite> .nullvalue NULL
sqlite> select *
   ...> from albums
   ...> order by AlbumID
   ...> limit 3 ;
AlbumId  Title                                  ArtistId
-------  -------------------------------------  --------
1        For Those About To Rock We Salute You  1       
2        Balls to the Wall                      2       
3        Restless and Wild                      2 
```

#### Escaping the …> in the middle of the query

Suppose you are typing a query and want to escape the …>, you can enter a semicolon (;) and hit the Enter key.

For example:

```
sqlite> select *
   ...> from alien
   ...> ;
Parse error: no such table: alien
```

In this example, we found a mistake in the table name (alien) and wanted to terminate the statement earlier. We entered the semicolon (;) and hit the `Enter` key.

The `sqlite>` command prompt appears again waiting for the next command to execute.

#### Saving the result of a query into a file

To save the result of a query into a file, you use the .output FILENAME command.

Once you issue the `.output` command, all the results of the subsequent queries will be saved to the file you specify in the `FILENAME` argument.

If you want to save the result of the next single query only to the file, you issue the `.once FILENAME` command.

To display the result of the query to the standard output again, you issue the `.output` command without arguments.

The following commands select the title from the albums table and write the result to the albums.txt file.

First, write the output of the query into the output.txt file:

`.output output.txt`

Second, execute a query that selects title from the albums table:

`SELECT title FROM albums;`

You can open the output.txt file to view the query result.

Finally, set the output back to the standard output:

`.output`

```
sqlite> .output output.txt
sqlite> SELECT title FROM albums;
sqlite> .output
sqlite> .quit
$ head output.txt
Title                                                       
------------------------------------------------------------
For Those About To Rock We Salute You                       

Balls to the Wall                                           

Restless and Wild                                           

Let There Be Rock                                           

```

#### Suppose you have a file named commands.txt in the c:\sqlite\db\ folder with the following content:

```
SELECT albumid, title
FROM albums
ORDER BY title
LIMIT 10;
```


To execute the SQL statements in the commands.txt file, you use the .read FILENAME command as follows:

.read commands.txt

Output:

```
sqlite> .read commands.txt
AlbumId  Title                                                       
-------  ------------------------------------------------------------
156      ...And Justice For All                                      

257      20th Century Masters - The Millennium Collection: The Best o
         f Scorpions                                                 

296      A Copland Celebration, Vol. I                               

94       A Matter of Life and Death                                  

95       A Real Dead One                                             

96       A Real Live One                                             

285      A Soprano Inspired                                          

139      A TempestadeTempestade Ou O Livro Dos Dias                  

203      A-Sides                                                     

160      Ace Of Spades 
```

