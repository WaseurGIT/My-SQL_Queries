SELECT c.id,c.name
FROM customers c
WHERE id NOT IN(
    SELECT id_customers
    FROM locations
)