-- Вывести общее количество клиентов не из Germany --
SELECT COUNT(*) AS total_clients_not_from_Germany
FROM Customers
WHERE 
NOT Country = 'Germany'
hjknknjknj
