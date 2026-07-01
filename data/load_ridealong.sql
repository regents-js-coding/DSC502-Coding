-- load_ridealong.sql
-- Run this once to load all RideAlong tables into DuckDB.
-- In notebook: import duckdb; con = duckdb.connect(); con.execute(open('../data/load_ridealong.sql').read())

DROP TABLE IF EXISTS ra_reviews;
DROP TABLE IF EXISTS ra_trips;
DROP TABLE IF EXISTS ra_drivers;
DROP TABLE IF EXISTS ra_customers;

CREATE TABLE customers AS
    SELECT * FROM read_csv_auto('../data/ra_customers.csv');

CREATE TABLE drivers AS
    SELECT * FROM read_csv_auto('../data/ra_drivers.csv');

CREATE TABLE trips AS
    SELECT * FROM read_csv_auto('../data/ra_trips.csv');

CREATE TABLE reviews AS
    SELECT * FROM read_csv_auto('../data/ra_reviews.csv');

-- Confirm
SELECT 'customers' AS table_name, COUNT(*) AS rows FROM customers
UNION ALL
SELECT 'drivers', COUNT(*) FROM drivers
UNION ALL
SELECT 'trips', COUNT(*) FROM trips
UNION ALL
SELECT 'reviews', COUNT(*) FROM reviews;
