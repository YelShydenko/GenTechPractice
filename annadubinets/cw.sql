SELECT 
COUNT(*) AS total_customers_not_from_germany
FROM Customers
WHERE Country <> 'Germany'