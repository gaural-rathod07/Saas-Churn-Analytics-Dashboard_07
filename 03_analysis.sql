CREATE TABLE customer_analytics AS
SELECT 
	customerID,
    tenure,
    Contract,
    InternetService,
    PaymentMethod,
    MonthlyCharges,
    TotalCharges,
    
    CASE 
		WHEN Churn = 'Yes' THEN 1
        ELSE 0
	END AS churn_flag
    
FROM customer_churn_raw;

SELECT COUNT(*) FROM customer_analytics;

SELECT 
	SUM(MonthlyCharges) AS total_mrr
FROM customer_analytics
WHERE churn_flag = 0;

SELECT ROUND(SUM(Churn_flag) / COUNT(*) * 100, 2) AS churn_rate_percentage
FROM customer_analytics;

SELECT
	ROUND(AVG(MonthlyCharges), 2) AS arpu
FROM customer_analytics
WHERE churn_flag = 0;

SELECT
	ROUND(SUM(MonthlyCharges), 2) AS revenue_at_risk
FROM customer_analytics
WHERE churn_flag = 1;

SELECT 
	ROUND(AVG(TotalCharges), 2) AS avg_clv
FROM customer_analytics;

SELECT 
	Contract,
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    ROUND(SUM(churn_flag) / COUNT(*) * 100, 2) AS churn_rate_percentage
FROM customer_analytics
GROUP BY Contract
ORDER BY churn_rate_percentage DESC;

SELECT 
	Contract,
    ROUND(SUM(MonthlyCharges), 2) AS total_revenue,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_revenue
FROM customer_analytics
GROUP BY Contract
ORDER BY total_revenue DESC;

SELECT 
	Contract,
    ROUND(SUM(CASE WHEN churn_flag = 1 THEN MonthlyCharges ELSE 0 END), 2) AS revenue_at_risk
FROM customer_analytics
GROUP BY Contract
ORDER BY revenue_at_risk DESC;

SELECT 
	Contract,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charge_churned
FROM customer_analytics
WHERE churn_flag = 1
GROUP BY Contract
ORDER BY avg_monthly_charge_churned DESC;

