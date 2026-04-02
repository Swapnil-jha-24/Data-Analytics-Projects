Retail Sales Analytics

Overview
This project analyzes ~541K retail transaction records (2010–2011) to uncover key drivers of revenue, customer behavior patterns, and product performance. The objective was to generate actionable insights to support business growth, improve sales strategy, and identify revenue concentration risks.

Tools Used

* SQL: Data extraction, joins, aggregations, and window functions
* Python (Pandas): Data cleaning, preprocessing, and transformation
* Power BI: Dashboard development, KPI tracking, and visualization

Dataset

* ~541,000 records
* Key fields: Invoice ID, Customer ID, Product Name, Quantity, Unit Price, Country, Transaction Date

---

Key Metrics (from Dashboard)

* Total Sales: **8.91M**
* Total Transactions: **19K**
* Total Customers: **4,339**
* Total Quantity Sold: **5M units**
* Average Order Value (AOV): **480.76**

---

Key Business Insights

1. Revenue Concentration by Geography

* United Kingdom contributes approximately **~90%+ of total revenue**, indicating heavy dependency on a single market
* Other countries (Netherlands, Germany, France) contribute significantly less (<10% combined)

👉 Business Insight:
High geographic concentration creates **market risk**. Expansion into other regions is necessary to reduce dependency.

---

2. Product Contribution Analysis

* Top 10 products contribute approximately **35–40% of total revenue**
* “Paper Craft” and “Regency Cakes” categories dominate sales

👉 Business Insight:
Revenue is heavily dependent on a limited set of products → **inventory and demand risk**
Focus should be on:

* Promoting mid-performing products
* Diversifying product portfolio

---

3. Sales Trend Analysis

* Sales show a **steady upward trend from Oct 2010 to Oct 2011**
* Significant spike observed in **Q4 (holiday season)**

👉 Business Insight:

* Strong seasonality present
* Opportunity to optimize:

  * Inventory planning
  * Marketing campaigns during peak periods

---

4. Customer Behavior

* Top customers contribute disproportionately high revenue (Pareto pattern observed)
* Repeat purchase behavior identified among high-value customers

👉 Business Insight:

* Implement **customer retention strategies**
* Target top customers with loyalty programs

---

5. Order Value & Quantity Relationship

* Scatter analysis shows **high variance in order size**
* Few transactions contribute extremely high revenue

👉 Business Insight:

* Presence of bulk buyers / high-value orders
* Opportunity for **B2B segmentation or premium targeting**

---

Dashboard Features

* KPI tracking (Total Sales, Transactions, AOV, Quantity)
* Time-series analysis (monthly/quarterly trends)
* Product-level revenue breakdown
* Country-level performance analysis
* Customer-level revenue insights
* Quantity vs Sales correlation analysis

---

Business Impact

* Identified **over-dependence on UK market (~90% revenue)**
* Highlighted **top product concentration risk (40% revenue from few items)**
* Enabled **seasonal demand planning (Q4 spikes)**
* Provided insights for **customer retention and segmentation strategies**
* Improved decision-making through centralized KPI dashboard

---

Output
An interactive Power BI dashboard enabling stakeholders to monitor sales performance, identify trends, and make data-driven business decisions.

GitHub Repository
https://github.com/Swapnil-jha-24/Data-Analytics-Projects/tree/main/Retail-Sales-Analytics
