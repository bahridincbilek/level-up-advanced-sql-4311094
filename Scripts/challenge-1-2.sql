SELECT e.firstName, e.lastName, e.title, s.salesId
FROM employee AS e 
LEFT JOIN sales AS s
    ON e.employeeId = s.employeeId
WHERE e.title = 'Sales Person' AND s.salesId IS NULL
