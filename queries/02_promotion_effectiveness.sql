-- ============================================
-- Query 02: Promotion Type Effectiveness
-- ============================================
-- Business Question: Which promotion types drive 
-- the most profit and revenue?
-- SQL Concepts: GROUP BY, SUM, AVG, ROUND, ORDER BY

SELECT "Promotion_Type", 
  ROUND(SUM("Net_Revenue_USD")::numeric,2) AS total_revenue, 
  ROUND(SUM("Profit_USD")::numeric,2) AS total_profit, 
  ROUND(AVG("Profit_Margin_Pct")::numeric,2) AS avg_profit_margin_pct 
FROM public.fmcg_sales
GROUP BY "Promotion_Type"
ORDER BY SUM("Profit_USD") DESC
