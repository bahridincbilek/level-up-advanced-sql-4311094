WITH dates AS (SELECT strftime('%m', soldDate) as soldMonths, employeeId, salesAmount
          FROM sales
          WHERE soldDate >= '2021-01-01'
AND soldDate < '2022-01-01'   )

SELECT e.firstName, e.lastName,

  SUM(CASE 
        WHEN d.soldMonths = '01' 
        THEN salesAmount END) AS JanSales,
  SUM(CASE 
        WHEN d.soldMonths = '02' 
        THEN salesAmount END) AS FebSales,
  SUM(CASE 
        WHEN d.soldMonths = '03' 
        THEN salesAmount END) AS MarSales,
  SUM(CASE 
        WHEN d.soldMonths = '04' 
        THEN salesAmount END) AS AprSales,
  SUM(CASE 
        WHEN d.soldMonths = '05' 
        THEN salesAmount END) AS MaySales,
  SUM(CASE 
        WHEN d.soldMonths = '06' 
        THEN salesAmount END) AS JunSales,
  SUM(CASE 
        WHEN d.soldMonths = '07' 
        THEN salesAmount END) AS JulSales,
  SUM(CASE 
        WHEN d.soldMonths = '08' 
        THEN salesAmount END) AS AugSales,
  SUM(CASE 
        WHEN d.soldMonths = '09' 
        THEN salesAmount END) AS SepSales,
  SUM(CASE 
        WHEN d.soldMonths = '10' 
        THEN salesAmount END) AS OctSales,
  SUM(CASE 
        WHEN d.soldMonths = '11' 
        THEN salesAmount END) AS NovSales,
  SUM(CASE 
        WHEN d.soldMonths = '12' 
        THEN salesAmount END) AS DecSales

FROM employee e 
INNER JOIN dates d 
    ON e.employeeId = d.employeeId
GROUP BY e.firstName, e.lastName
ORDER BY e.lastName, e.firstName

