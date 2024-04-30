## --- NETOLOGY HOMEWORK ---
### DATA STORAGE AND SECURITY ORGANIZATION --> Nested Subqueries JOINS Aggregating Queries


#### --> Task 1 --> Two Tables Inner Join


# Creating Tables: Customers and Orders

This repository contains SQL scripts for creating two related tables: Customers and Orders, along with additional queries for searching and filtering data.

## Table Structure

### Customers Table

The Customers table consists of the following columns:

- `id`: A unique identifier for each customer (primary key).
- `first_name`: The first name of the customer.
- `last_name`: The last name of the customer.
- `age`: The age of the customer.
- `phone_number`: The phone number of the customer.

### Orders Table

The Orders table consists of the following columns:

- `id`: A unique identifier for each order (primary key).
- `date`: The date of the order.
- `customer_id`: A foreign key referencing the id column in the Customers table.
- `product_name`: The name of the product in the order.
- `amount`: The amount of the product in the order.

## SQL Scripts

### Creating Tables

- `creating-tables-customers-orders.sql`: SQL script to create the Customers and Orders tables with their respective columns and constraints.

### Querying Data

- `table-orders-searching-for-alexey.sql`: SQL script to search for orders with product names for customers named "alexey" (case-insensitive).

## Usage

To use these SQL scripts, you can execute them in your preferred SQL database management tool or environment.

