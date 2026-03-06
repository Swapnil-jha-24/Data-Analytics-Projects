# Tenant Rental Analysis (SQL Project)

## Project Overview

This project analyzes tenant rental data using SQL to identify rental patterns, tenant behavior, referral activity, and property occupancy trends. The objective is to demonstrate how SQL can be used to solve real business problems and generate actionable insights.

## Dataset Description

The dataset contains information related to tenants, houses, rent payments, and referrals.

Key fields include:

* Tenant ID
* Tenant Name
* Contact Number
* City
* House ID
* Rent Amount
* Referral Details

This dataset helps analyze tenant segmentation, referral patterns, and property performance.

## Database Tables

The database is structured using the following tables:

* tenants
* houses
* rent_payments
* referrals

An ER diagram is included in this repository to illustrate the relationships between these tables.

## Business Problems Solved

The project answers the following analytical questions:

1. Classify tenants into customer segments based on rent amount.
2. Identify tenants who have never referred another tenant.
3. Find the house with the highest occupancy.
4. Calculate the average rent paid by tenants.
5. Identify the top paying tenants.
6. Analyze referral patterns among tenants.
7. Calculate total rental revenue.
8. Rank houses based on tenant occupancy.
9. Identify tenants paying above average rent.
10. Detect possible duplicate or missing data.

## SQL Concepts Used

The following SQL techniques were applied in this project:

* SELECT statements
* JOIN operations
* GROUP BY and aggregations
* CASE statements
* Subqueries
* Common Table Expressions (CTE)
* Window functions
* Ranking functions

## Tools Used

* SQL Server Management Studio (SSMS)
* SQL
* Excel (Dataset preparation)
* GitHub (Project hosting)

## Key Insights

Some insights derived from the analysis include:

* Certain houses generate significantly higher rental revenue due to higher occupancy.
* A small group of tenants contributes a large share of the total rent revenue.
* Referral activity among tenants is limited, suggesting an opportunity to introduce referral incentives.
* Tenant segmentation helps identify premium renters and high-value customers.

## Conclusion

This project demonstrates the application of SQL for solving real-world data analysis problems. The analysis highlights tenant segmentation, rental revenue patterns, and referral behavior that can help property managers make data-driven decisions.
