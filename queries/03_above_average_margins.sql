-- ============================================ 
-- Query 03: Categories Above Average Profit Margin 
-- ============================================ 
-- Business Question: Which categories are above average profit margin? 
-- SQL Concepts: GROUP BY, AVG, Subquery, ROUND, ORDER BY

SELECT "Product_Category", 
ROUND(AVG("Profit_Margin_Pct")::numeric,2) AS avg_profit_margin, 
ROUND((SELECT AVG("Profit_Margin_Pct")::numeric FROM public.fmcg_sales),2) AS overall_avg_margin 
FROM public.fmcg_sales
GROUP BY "Product_Category"
HAVING AVG("Profit_Margin_Pct") > (SELECT AVG("Profit_Margin_Pct")FROM public.fmcg_sales)
ORDER BY avg_profit_margin DESC
