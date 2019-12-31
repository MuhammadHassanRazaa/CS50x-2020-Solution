----
-- phpLiteAdmin database dump (http://www.phpliteadmin.org/)
-- phpLiteAdmin version: 1.9.7.1
-- Exported: 6:51pm on December 31, 2019 (UTC)
-- database file: /home/ubuntu/pset8/finance/finance.db
----
BEGIN TRANSACTION;

----
-- Table structure for users
----
CREATE TABLE 'users' ('id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 'username' TEXT NOT NULL, 'hash' TEXT NOT NULL, 'cash' NUMERIC NOT NULL DEFAULT 10000.00 );

----
-- Table structure for buy
----
CREATE TABLE 'buy' ('buy_id' integer PRIMARY KEY AUTOINCREMENT NOT NULL, 'user_id' integer NOT NULL, 'Symbol' varchar(16) NOT NULL, 'Name' varchar(255) NOT NULL, 'Share' integer NOT NULL,'Unit_Price' numeric NOT NULL,'Total' numeric NOT NULL);

----
-- Table structure for History
----
CREATE TABLE 'History' ('history_id' integer PRIMARY KEY AUTOINCREMENT NOT NULL, 'user_id' integer NOT NULL, 'Symbol' varchar(16) NOT NULL, 'Share' integer NOT NULL,'Price' numeric NOT NULL, 'Transaction_Date' datetime NOT NULL DEFAULT CURRENT_TIMESTAMP );
COMMIT;
