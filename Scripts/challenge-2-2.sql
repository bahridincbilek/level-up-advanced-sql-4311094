SELECT e.employeeId, e.firstName, e.lastName, 
    MIN(s.salesAmount)  AS MinSalesAmount,
    MAX(s.salesAmount)  AS MaxSalesAmount
FROM sales s
INNER JOIN employee e 
    ON  s.employeeId = e.employeeId
WHERE  date('2023-01-01 00:00:00') > s.soldDate AND
 s.soldDate >= date('2022-01-01 00:00:00')
GROUP BY e.employeeId, e.firstName, e.lastName


