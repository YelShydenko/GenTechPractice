SELECT 
COUNT(*) AS total
FROM Customers
WHERE
NOT Country = 'Germany' 
