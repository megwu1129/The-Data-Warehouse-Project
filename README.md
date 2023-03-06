
## Overview

The objective of this project is to build a dimensional data warehouse from scratch using dbt and BigQuery. To identify the key business processes and requirements and enable business stakeholders or users to easily analyze and explore data.

## Data Source

The data source of this project is Northwind database, which contains the sales data for a fictitious company called “Northwind Traders" that imports and exports specialty food items from around the world. The dataset includes 14 tables such as data for Customers, Employees, Products, Orders, Shippers, Suppliers, and a few more. I used this dataset to create 

## Use-Case
The current architecture of Northwind Traders is a mix of on-premise and legacy systems, and their primary operational database is a MySQL database, which is also being used to generate reports and build analytics solutions. They are struggling to keep up with reporting requirements and the database tends to slow down frequently, impacting their day-to-day business. They want to modernize their data and reporting solutions. Specifically, they want to modernize their existing infrastructure for below:

- Better scalability
- Reduce load on operational systems
- Improve data security
- Improve reporting speed

## Proposal to solve the issues
- Migrate Northwind Traders' database system to Google Cloud Platform (GCP)
- Set up OLAP system for reports during the migration
- Run OLAP using BigQuery
- Build dimensional Data Warehouse on BigQuery to support reporting requirements

## Business Requirements:
- Sales Overview: the goal is to understand customers. What sells the most/the least using sales reports.
- Sales Agent Tracking: track sales and performance of each sales agent to adjust commissions and reward high achievers.
- Product Inventory: understand the current inventory levels to adjust stock management strategies.
- Customer Reporting: allows customers to understand their purchase orders.

## ER Diagram
![northwind-oltp-erd](https://user-images.githubusercontent.com/73263355/223220708-b7e10979-712f-41a5-a75e-29f0a9d610f6.png)
