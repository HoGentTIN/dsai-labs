# Performance of Android Persistence Libraries

## Description

Which Android library for saving objects to the filesystem has the best performance? Four libraries were investigated:

- SharedPreferences (built-in)
- [GreenDAO](https://greenrobot.org/greendao/)
- [SQLite](https://www.sqlite.org)
- [Realm](https://realm.io/)

This dataset is the result of a bachelor thesis by Akin (2016).

## Format

- `Time`: time needed to write data
- `PersistenceType`: the persistence library that was used (categorical: GreenDAO, Realm, SharedPreferences, SQLLite)
- `DataSize`: the size of the dataset (categorical: Small, Medium, Large)

Warning w.r.t. the .csv version of this data set:

- fields are separated by `;`
- the decimal point is a `.`

## Details

Of all mobile applications that exist today, how many of them will continue to work without an internet connection? Nowadays, supporting offline operation in an application is no longer a luxury, but a must-have. To provide offline support within an application, the use of a database is necessary.

There are different types of databases, but which one should you use? Which one is most suitable for a certain type of application? The choice of the database can have a major impact on several metrics: performance, boot speed, CPU usage,... If the database affects these properties in a negative way, users may abandon the application.

To answer the problem statement, the following sub-questions have been formulated:

- What is the influence of the chosen database on the startup speed? Does using the chosen database slow down the application startup speed, or does it not affect it at all (compared to using other databases)?
- How does the chosen database affect CPU usage? Higher CPU usage will result in more battery consumption. Will the application use more or less CPU when using the chosen database (compared to using other databases)?
- What is the average speed of the chosen database when adding records to the database?

The research was conducted on three different application profiles: little data (profile 1), average amount of data (profile 2), a lot of data (profile 3). The expectations were that Realm would always be the best choice, except for application profile 1. There SharedPreferences should be the best choice, as it is specially developed for small amounts of simple data. However, the investigation has yielded the following result:

- Few dates: Realm
- Average amount of data: Realm
- Lots of data: SQLite

## References

Akin, O. (2016) *Performantie van persistentiemogelijkheden in Android.* Bachelor thesis. Hogeschool Gent. <https://scriptie.hogent.be/2015-2016/1354_201106717_PBA-TIN_scriptie.pdf>