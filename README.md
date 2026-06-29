# FMCG Sales SQL Analysis
## Overview
This project analyzes a fast-moving consumer goods (FMCG) sales dataset spanning 
2023–2025 across 18,240 transactions, 17 brands, 30 products, and 5 product categories. Using 
SQL in a PostgreSQL environment, I explore profitability, promotional effectiveness, 
and regional growth trends to answer a central business question:

**Where should this company focus investment to maximize profitability?**

All queries were written in Mode Analytics connected to a Supabase PostgreSQL 
database. This project demonstrates applied SQL skills including aggregations, 
subqueries, and window functions (RANK, LAG, LEAD) in a CPG business context.
## Business Questions
1. Which product categories and brands generate the highest profit and revenue?
2. Which promotion types drive the most profit and revenue?
3. Which product categories perform above the overall average profit margin?
4. How has profitability trended by category year over year?
5. Which regions are growing versus declining in revenue?
6. Which brands rank highest within each product category by total profit?
## Key Findings
## Dataset
**Source:** FMCG Sales & Marketing Profitability Dataset (Kaggle)  
**Table:** public.fmcg_sales  
**Rows:** 18,240  
**Time Period:** 2023–2025  

**Key Columns:**
- `Product_Category`, `Brand`, `Product_Name`, `SKU` — product dimensions
- `Region`, `Country`, `City` — geographic dimensions  
- `Sales_Channel`, `Customer_Type`, `Promotion_Type` — commercial dimensions
- `Gross_Sales_USD`, `Net_Revenue_USD`, `Profit_USD`, `Profit_Margin_Pct` — financial metrics
- `COGS_USD`, `Marketing_Spend_USD`, `Logistics_Cost_USD` — cost metrics
- `Units_Sold`, `Unit_Price_USD`, `Discount_Pct` — volume and pricing
## Tools Used
- **SQL (PostgreSQL)** — primary analysis language
- **Mode Analytics** — query execution and data exploration
- **Supabase** — cloud PostgreSQL database hosting the dataset
- **GitHub** — project documentation and version control
## Project Structure
```
cpg-sales-sql-analysis/
├── README.md
├── queries/
│   ├── 01_category_brand_profitability.sql
│   ├── 02_promotion_effectiveness.sql
│   ├── 03_above_average_margins.sql
│   ├── 04_profitability_trends.sql
│   ├── 05_regional_growth.sql
│   └── 06_brand_ranking_by_category.sql
└── findings/
    └── summary.md
```
