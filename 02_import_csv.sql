SELECT COUNT(*) FROM customer_churn_raw;

SELECT DISTINCT Churn FROM customer_churn_raw;

SELECT COUNT(*)
FROM customer_churn_raw
WHERE TotalCharges = '';

SELECT COUNT(*)
FROM customer_churn_raw
WHERE TotalCharges IS NULL
	OR TRIM(TotalCharges) = '';

UPDATE customer_churn_raw
SET TotalCharges = '0'
WHERE TRIM(TotalCharges) = '';

SELECT COUNT(*)
FROM customer_churn_raw
WHERE TotalCharges IS NULL
	OR TRIM(TotalCharges) = '';
    
ALTER TABLE customer_churn_raw
MODIFY COLUMN TotalCharges DECIMAL(10,2);

DESCRIBE customer_churn_raw;

