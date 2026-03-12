# SaaS Customer Churn & Revenue Analytics Dashboard

This project analyzes customer churn behavior and revenue risk for a subscription-based SaaS company. It uses **MySQL** for data cleaning, analysis, and KPI calculations, and **Tableau** for interactive executive dashboards.

---

## Project Overview

Subscription-based SaaS companies face revenue loss if customers churn. My project builds an **end-to-end analytics workflow** to:

1. Clean and structure raw customer data.
2. Calculate key business metrics like **MRR, churn rate, and revenue at risk**.
3. Identify high-risk segments based on **contract type, customer tenure, and monthly charges**.
4. Provide actionable business recommendations.
5. Visualize insights in a **professional Tableau dashboard** for executives.

---

## Dataset

- **Source:** Telco Customer Churn dataset  
- **Rows:** 7,043  
- **Columns:** 21  

The dataset includes sample customer information such as contract type, tenure, monthly and total charges, and churn status.

---

## SQL Workflow

The SQL files are structured to show the full analysis pipeline:

1. `sql/01_create_database.sql` – Creates the database and tables.  
2. `sql/02_import_csv.sql` – Imports the CSV dataset into MySQL.  
3. `sql/03_analysis.sql` – Performs data cleaning, calculates KPIs (MRR, ARPU, CLV, revenue at risk), and generates insights by contract type and other customer segments.

**Note:** All SQL scripts are anonymized; no credentials or personal data are included.

---

## Tableau Dashboard

The dashboard includes **7 interactive visualizations**:

1. **MRR (Monthly Recurring Revenue) KPI** – Total revenue from active customers.  
2. **Churn Rate KPI** – Overall churn percentage.  
3. **Revenue at Risk KPI** – Revenue exposed due to churned customers.  
4. **Churn by Contract Type** – Identifies high-risk contract segments.  
5. **Revenue at Risk by Contract** – Shows financial impact of churn per contract type.  
6. **Churn by Customer Tenure** – Highlights churn based on how long customers have been with the company.  
7. **Churn by Monthly Charges** – Analyzes price sensitivity and high-value customer churn.

The dashboard also includes **key insights and business recommendations**, helping executives make data-driven decisions.

---

## Key Insights

- **42.7% of churn occurs in Month-to-Month contracts**, making them the riskiest segment.  
- **$120K+ in monthly revenue** is at risk from these customers.  
- High monthly charges correlate with higher churn risk.  
- Most churn occurs within the **first year** of customer tenure.

---

## Business Recommendations

- Encourage customers to move from **Month-to-Month → 1-year or 2-year contracts**.  
- Offer **loyalty discounts or bundled packages** for high-value customers.  
- Improve **onboarding experience** for new customers to reduce early churn.  
- Identify and **retain high-paying at-risk customers**.

---

## Tools Used

- **MySQL** – Data cleaning, transformation, and KPI calculations.  
- **Tableau** – Dashboard creation and interactive visualization.  

---

## Project Structure

```text
saas-churn-analytics-dashboard/
│
├── dataset.csv               # Raw dataset
├── 
├── 01_create_database.sql   # Database & table creation
├── 02_import_csv.sql        # CSV import script
├── 03_analysis.sql          # KPI calculation and analysis
├── dashboard.png            # Screenshot of Tableau dashboard
├── README.md                # Project explanation
```

## Tableau Public Link

View the interactive dashboard here:
https://public.tableau.com/views/SaasCustomerChurnRevenueIntelligenceDashboard/SaasCustomerChurnRevenueIntelligenceDashboard?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link
