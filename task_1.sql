SELECT
count(*) as total_customers
FROM Customers
where Customers.Country != 'Germany'