# Revonation-Operational-Performance-Dashboard
## Skills Demonstrated:
SQL • Data Analysis • Power BI • KPI Development • Operational Analytics

---

## Project Overview
This project analyzes operational performance for a renovation company experiencing mild cost overruns and inconsistent profitability as the business scaled.

Using SQL and Power BI, the project evaluates project profitability, cost variance, schedule delays, and crew performance across multiple renovation jobs.

The goal is to identify operational inefficiencies and highlight opportunities to improve cost control and project planning.

---

## Business Problem
* Mild but recurring cost overruns
* Project delays affecting delivery timeline
* Profit margin variability across job types
* Limited visibility into crew and subcontractor performance

---

## Dataset
| Column | Description |
| :--- | :--- |
|job_id          |Unique project identifier|
|job_type        |Type of renovation work|
|start_date      |Project start date|
|planned_duration|Planned project duration|
|actual_duration |Actual project duration|
|budgeted_cost   |Estimated project cost|
|actual_cost     |Actual project cost|
|revenue         |Revenue generated from project|
|crew            |Assigned crew team|
|subcontractor   |External contractor used|
|quarter         |Project quarter|

---

## Tools Used
- SQL - data analysis and metric calculations
- Power BI - interactive dashboard and visualizations
- Excel - initial dataset preparation

  ---

## Analysis Performed
- Cost Variance & Schedule Variance
- Quarterly Profit Trend Analysis
- Crew-Level Performance Evaluation
- Job-Type Profitability Assessment
- Subcontractor Delay Impact Analysis


## SQL Analysis
Example queries used during analysis:
### Total Business Profit
```sql
SELECT 
SUM(revenue) AS total_revenue,
SUM(actual_cost) AS total_cost,
SUM(revenue - actual_cost) AS total_profit
FROM jobs;
```

## Identify Cost Overruns
```sql
SELECT 
job_id,
budgeted_cost,
actual_cost,
(actual_cost - budgeted_cost) AS cost_overrun
FROM jobs
WHERE actual_cost > budgeted_cost;
```

## Profit by Job Type
```sql
SELECT 
job_type,
SUM(revenue - actual_cost) AS total_profit
FROM jobs
GROUP BY job_type
ORDER BY total_profit DESC;
```
---

## Power BI Dashboard 
### Key Dashboard Features
- Total Revenue and Profit KPIs
- Cost Overrun Analysis
- Profitability by Renovation Type
- Project Delay Trends
- Crew Performance Comparison

  ---

## Key Insights
- Certain renovation types experienced recurring cost overruns, suggesting that    budgeting models may need refinement.
- Project delays varied by crew, highlighting potential operational                inefficiencies in scheduling and resource allocation.
- Revenue growth did not consistently translate to higher profit margins due to     cost variance and schedule delays.
- Cost overruns increased slightly in later quarters.
- Roofing projects showed lower profit margins.
- Profitability varied significantly across job types.
 
    ---
 
 ## Recommendations
Recurring cost overruns may suggest that cost estimates for these project types may be inaccurate or that additional materials and labor requirements are not fully captured during planning, which may be overcome by improving cost estimation models or incorporating historical project data when budgeting to help reduce financial variance.

---

## Future Improvements
- Expanding the data with more project records
- Adding labor and material cost breakdowns
- Implementing predictive models for project delays
- Developing profitability forecasting dashboards
   





















  
