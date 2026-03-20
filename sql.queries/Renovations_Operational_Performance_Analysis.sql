CREATE DATABASE renovations_analytics;
USE renovations_analytics;
CREATE TABLE jobs (
    job_id VARCHAR(5) PRIMARY KEY,
    job_type VARCHAR(20),
    start_date DATE,
      planned_duration INT,
    actual_duration INT,
    budgeted_cost DECIMAL(12,2),
    actual_cost DECIMAL(12,2),
        revenue DECIMAL(12,2),
    crew VARCHAR(5),
    subcontractor VARCHAR(50),
    project_month INT,
    quarter INT
    );

# Total Revenue, Cost & Profit
SELECT 
    SUM(revenue) AS total_revenue,
    SUM(actual_cost) AS total_cost,
    SUM(revenue - actual_cost) AS total_profit,
    ROUND((SUM(revenue - actual_cost)/SUM(revenue))*100,2) AS profit_margin_pct
FROM jobs;

# Over-Budget Projects
SELECT 
    job_id,
    job_type,
    budgeted_cost,
    actual_cost,
    ROUND(((actual_cost - budgeted_cost)/budgeted_cost)*100,2) AS cost_variance_pct
FROM jobs
WHERE actual_cost > budgeted_cost
ORDER BY cost_variance_pct DESC;

# Profitability by Job Type
SELECT 
    job_type,
    COUNT(*) AS total_jobs,
    SUM(revenue - actual_cost) AS total_profit,
    ROUND(AVG((revenue - actual_cost)/revenue)*100,2) AS avg_margin_pct
FROM jobs
GROUP BY job_type
ORDER BY avg_margin_pct ASC;

# Quarterly Profit Trend
SELECT 
    quarter,
    SUM(revenue) AS revenue,
    SUM(actual_cost) AS cost,
    SUM(revenue - actual_cost) AS profit
FROM jobs
GROUP BY quarter
ORDER BY quarter;

# Cost Inflation Trend ( Average Cost per Quarter)
SELECT 
    quarter,
    ROUND(AVG(actual_cost),2) AS avg_actual_cost
FROM jobs
GROUP BY quarter
ORDER BY quarter;

# Crew Performance Analysis
SELECT 
    crew,
    COUNT(*) AS total_jobs,
    SUM(actual_cost > budgeted_cost) AS overrun_jobs,
    ROUND(AVG((actual_cost - budgeted_cost)/budgeted_cost)*100,2) AS avg_cost_variance_pct
FROM jobs
GROUP BY crew
ORDER BY avg_cost_variance_pct DESC;

# Schedule Variance by Crew
SELECT 
    crew,
    ROUND(AVG(actual_duration - planned_duration),2) AS avg_delay_days
FROM jobs
GROUP BY crew
ORDER BY avg_delay_days DESC;

# Top 5 Least Profitability Projects
SELECT 
    job_id,
    job_type,
    revenue - actual_cost AS profit
FROM jobs
ORDER BY profit ASC
LIMIT 5;

# Projects With Both Cost & Schedule Overruns
SELECT 
    job_id,
    crew,
    job_type,
    actual_cost,
    budgeted_cost,
    actual_duration,
    planned_duration
FROM jobs
WHERE actual_cost > budgeted_cost
AND actual_duration > planned_duration;

# Quarter With Worst Average Margin
SELECT 
    quarter,
    ROUND(AVG((revenue - actual_cost)/revenue)*100,2) AS avg_margin_pct
FROM jobs
GROUP BY quarter
ORDER BY avg_margin_pct ASC
LIMIT 1;








	







































    










    
    




	





    






    
    
    
    












    
    












    







    
    

    

    
    









































