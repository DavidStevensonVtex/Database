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

