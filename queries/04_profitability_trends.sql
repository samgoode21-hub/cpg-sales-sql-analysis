-- ============================================ 
-- Query 04: Category Profitability Trends 
-- ============================================ 
-- Business Question: How has profitability trended by category year over year?
-- SQL Concepts: GROUP BY, AVG, ROUND, LAG, ORDER BY

SELECT "Product_Category", "Year", ROUND(SUM("Profit_USD")::numeric,2) AS current_year_profit, ROUND(LAG(SUM("Profit_USD")) OVER (PARTITION BY "Product_Category" ORDER BY "Year")::numeric,2) AS prior_year_profit,
ROUND((SUM("Profit_USD") - LAG(SUM("Profit_USD")) OVER (PARTITION BY "Product_Category" ORDER BY "Year"))::numeric,2) AS profit_year_change,
ROUND(AVG("Profit_Margin_Pct")::numeric,2) AS avg_profit_margin
FROM public.fmcg_sales
GROUP BY "Year", "Product_Category"
ORDER BY "Year" ASC, "Product_Category" ASC
