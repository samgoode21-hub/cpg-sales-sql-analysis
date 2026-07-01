-- ============================================
-- Query 05: Regional Growth Profitability
-- ============================================
-- Business Question: Which regions 
-- are growing versus declining?
-- SQL Concepts: SELECT, ROUND, LAG, LEAD, GROUP BY, ORDER BY

SELECT "Region", "Year", 
ROUND(LAG(SUM("Profit_USD")) OVER (PARTITION BY "Region" ORDER BY "Year")::numeric,2) AS previous_year_profit,
ROUND(SUM("Profit_USD")::numeric,2) AS current_profit,
ROUND(LEAD(SUM("Profit_USD")) OVER (PARTITION BY "Region" ORDER BY "Year")::numeric,2) AS next_year_profit,
ROUND(AVG("Profit_Margin_Pct")::numeric,2) AS avg_profit_margin, 
ROUND(SUM("Net_Revenue_USD")::numeric,2) AS revenue
FROM public.fmcg_sales
GROUP BY "Region", "Year"
ORDER BY "Region" ASC, "Year" ASC
