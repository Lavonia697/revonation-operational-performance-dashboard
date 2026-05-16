# Revonation-Operational-Performance-Dashboard
SQL and Power BI project analyzing project profitability, labor efficiency, material usage, and subcontractor performance.

---

## Project Overview
This project analyses operational performance for a renovation company experiencing mild cost overruns and inconsistent profitability across renovations projects

Using a relational database built in MySQL and an interactive Power BI dashboard, the project evaluates project profitability, workforce efficiency, material usage, project delays, and subcontractor performance.

The solution integrates multiple operational tables including jobs, materials, and subcontractors to create a centralised operational intelligence dashboard for business-making.

---

## Business Problem
As renovation projects increase in volume and complexity, management requires better visibility into operational performance.

Without centralized analytics, it becomes difficult to monitor:
- project profitability
- labor efficiency
- material waste
- subcontractor performance
- project delays
- cost overruns

  ---

  # Database Structure Section
  ## Relational Database Model ?????
Fact_Jobs
├── Fact_Labor
├── Fact_Materials
└── Dim_Subcontractor

---

  ## Tables Used
 | Table | Purpose |
 | :--- | :--- |
 |Fact_Jobs    | Core renovation project data|
 |Fact_Labor   | Workforce hours and labor costs|
 |Fact_Material | Material usage and waste tracking|
 |Dim_Subcontractor | Subcontractor performance metrics|

 ---

## SQL Features
SQL analysis included:
- JOIN queries across operational tables
- labor cost analysis
- project profitability calculations
- material waste analysis
- subcontractor delay analysis
- aggregation and KPI calculations
- relational database modelling using primary and foreign keys

 ---

## Power BI Dashboard Features
 Dashboard features included:
 - Executive KPI cards
 - Revenue and profitability analysis
- Cost overrun tracking
 - Project delay analysis
- Labor efficiency metrics
- Material usage and waste analysis
- Subcontractor performance analysis
- Dynamic slicers and drill-through functionality
- Multi-page operational reporting
  
---

## Key Metrics
| Metric | Description |
| :--- | :--- |
|Total Revenue    |Total project income|
|Net Profit       |Revenue after operational costs|
|Cost Overrun Rate |Budget vs actual cost variance|
|Avg Project Delay |Schedule performance tracking|
|Labor Cost        |Schedule performance tracking|
|Material Waste    |Unused material quantity|
|Revenue per Labor Hour |Workforce efficiency metric|

---

## Dashboard Pages
| Page | Focus |
| :--- | :--- |
|Executive Overview   |Revenue, profitability, delays, KPIs|
|Workforce & Materials Analysis  |Labor costs, hours, material waste|
|Subcontractor Performance       |Vendor delays, quality, reliability|

---

## Data Model
The Power BI model was designed using a star schema approach to improve analytical performance and maintain clean relationships between operational tables.

Dimension tables were used to organize crews, subcontractors, job types, and dates for scalable operational reporting.

---

## Repository Structure
Renovation-Operational-Intelligence/
│
├── README.md
│
├── data/
│   └── renovation_dataset.csv
│
├── sql/
│   ├── table_creation.sql
│   ├── data_inserts.sql
│   ├── analysis_queries.sql
│
├── powerbi/
│   └── renovation_dashboard.pbix
│
├── images/
│   ├── dashboard_overview.png
│   ├── powerbi_model.png
│   ├── schema_diagram.png
│
└── insights/
    └── business_insights.md

--- 

## Key Business Insights
Key findings from the analysis:
- Kitchen renovations generated the highest revenue and labor utilization.
- Some renovations generated the higher cost overruns and delays.
- Labor costs varied significantly between crews.
- Material waste patterns highlighted opportunities for operational savings.
- Subcontractors performance varied in terms of quality and schedule reliability

  ---

  ## Tools Used
  Excel - initial data preparation and SQL query checking using pivot tables
  MySQL Workbench - relational database management and SQL analysis
  Power BI - dashboard development and visualization

  ---
 
 ## Recommendations
Recurring cost overruns may suggest that cost estimates for these project types may be inaccurate or that additional materials and labor requirements are not fully captured during planning, which may be overcome by improving cost estimation models or incorporating historical project data when budgeting to help reduce financial variance.



   





















  
