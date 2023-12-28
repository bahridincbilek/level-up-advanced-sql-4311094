SELECT e.employeeId, e.firstName, e.lastName, 
    MIN(s.salesAmount)  AS MinSalesAmount,
    MAX(s.salesAmount)  AS MaxSalesAmount
FROM sales s
INNER JOIN employee e 
    ON  s.employeeId = e.employeeId
WHERE s.soldDate >= date('now','start of year')
GROUP BY e.employeeId, e.firstName, e.lastName


