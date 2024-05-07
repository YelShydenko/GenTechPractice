SELECT COUNT(*) AS total_clients_not_from_germany
FROM clients
WHERE country <> 'Germany'
