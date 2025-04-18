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