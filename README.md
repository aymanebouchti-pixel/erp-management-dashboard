# ERP Management & Business Intelligence Dashboard

## Overview

This project explores how SQL and Business Intelligence tools can be used to manage and analyze business data in an ERP environment.

It combines a relational database built with MySQL and a Power BI dashboard designed to monitor key business indicators related to customers, sales, invoices, payments, and inventory.

## Objectives

- Design and structure a relational database.
- Write SQL queries to answer business questions.
- Analyze sales, customer orders, payments, and inventory.
- Create reusable SQL views and KPI queries.
- Visualize business performance through a Power BI dashboard.

## Technologies

- **MySQL**
- **Power BI**
- **Csv**

## Database Structure

The database contains six main tables:

- `Customers`
- `Products`
- `Orders`
- `Order_Items`
- `Invoices`
- `Payments`

These tables represent relationships between customers, orders, products, invoices, and payments.

## SQL Scripts

| File | Purpose |
|---|---|
| `schema.sql` | Creates the database structure and tables. |
| `seed.sql` | Populates the database with sample data. |
| `queries.sql` | Contains SQL queries for data retrieval and analysis. |
| `view.sql` | Defines SQL views for reusable business reporting. |
| `kpi.sql` | Contains queries for calculating key performance indicators. |

## Business Analysis

The project covers several business topics:

- Customer order analysis
- Product sales and revenue
- Inventory monitoring
- Invoice and payment tracking
- Estimated profitability
- Business KPI reporting

## Power BI Dashboard

The dashboard is designed to provide a visual overview of business performance through KPI cards, charts, tables, and interactive filters.

## Future Improvements

- Improve data model relationships and report interactions.
- Standardize numerical data types and KPI calculations.
- Automate data refresh.
- Extend the database with suppliers and purchasing processes.

## Project Context

This is an educational project developed to practice SQL, relational database design, information systems, and Business Intelligence.

