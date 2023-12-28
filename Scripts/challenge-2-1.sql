SELECT e.employeeId, e.firstName, e.lastName, count(*)  AS NumOfCarsSales
FROM sales s
INNER JOIN employee e 
    ON  s.employeeId = e.employeeId
GROUP BY e.employeeId, e.firstName, e.lastName
ORDER BY NumOfCarsSales DESC
