SELECT c.firstName, c.lastName, s.salesAmount, s.soldDate
FROM customer AS c
INNER JOIN sales AS s
    ON c.customerId = s.customerId
UNION

SELECT c.firstName, c.lastName, s.salesAmount, s.soldDate
FROM customer AS c
LEFT JOIN sales AS s
    ON c.customerId = s.customerId
WHERE s.customerId IS NULL

UNION

SELECT c.firstName, c.lastName, s.salesAmount, s.soldDate
FROM sales AS s
LEFT JOIN customer AS c
    ON c.customerId = s.customerId
WHERE c.customerId IS NULL