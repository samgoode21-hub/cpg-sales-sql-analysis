-- ============================================
-- Query 01: Category & Brand Profitability
-- ============================================
-- Business Question: Which product categories and brands 
-- generate the highest total profit and revenue?
-- SQL Concepts: GROUP BY, SUM, ORDER BY, ROUND

SELECT 
  "Product_Category",
  "Brand",
  ROUND(SUM("Profit_USD")::numeric, 2) AS total_profit,
  ROUND(SUM("Net_Revenue_USD")::numeric, 2) AS total_net_revenue
FROM public.fmcg_sales
GROUP BY "Product_Category", "Brand"
ORDER BY total_profit DESC
LIMIT 10
