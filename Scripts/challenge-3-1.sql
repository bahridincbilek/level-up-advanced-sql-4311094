WITH dates AS (SELECT strftime('%Y', soldDate) as soldYear, 
                      salesAmount 
          FROM sales)

SELECT soldYear, format("$%.2f", sum(salesAmount)) AS AnnualSales
FROM dates
GROUP BY soldYear;