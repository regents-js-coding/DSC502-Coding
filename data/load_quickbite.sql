-- load_quickbite.sql
-- Run this once at the start of your Week 5 session to load all QuickBite tables.
-- In the DuckDB CLI: .read data/load_quickbite.sql

DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS drivers;
DROP TABLE IF EXISTS restaurants;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers AS
    SELECT * FROM read_csv_auto('../data/qb_customers.csv');

CREATE TABLE restaurants AS
    SELECT * FROM read_csv_auto('../data/qb_restaurants.csv');

CREATE TABLE drivers AS
    SELECT * FROM read_csv_auto('../data/qb_drivers.csv');

CREATE TABLE orders AS
    SELECT * FROM read_csv_auto('../data/qb_orders.csv');

CREATE TABLE reviews AS
    SELECT * FROM read_csv_auto('../data/qb_reviews.csv');

-- Confirm everything loaded
SELECT 'customers' AS table_name, COUNT(*) AS rows FROM customers
UNION ALL
SELECT 'restaurants', COUNT(*) FROM restaurants
UNION ALL
SELECT 'drivers', COUNT(*) FROM drivers
UNION ALL
SELECT 'orders', COUNT(*) FROM orders
UNION ALL
SELECT 'reviews', COUNT(*) FROM reviews;
