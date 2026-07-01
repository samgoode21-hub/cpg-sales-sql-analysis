-- ============================================
-- Query 06: Ranking Brand Profitability by Category
-- ============================================
-- Business Question: Rank brands within each category 
-- based on profit
-- SQL Concepts: SELECT, ROUND, SUM, RANK, GROUP, ORDER BY
SELECT "Brand", "Product_Category", ROUND(SUM("Profit_USD")::numeric,2) AS Profit,
RANK() OVER(PARTITION BY "Product_Category" ORDER BY SUM("Profit_USD")DESC) AS brands_ranked
FROM public.fmcg_sales
GROUP BY "Brand", "Product_Category"
ORDER BY "Product_Category" ASC
