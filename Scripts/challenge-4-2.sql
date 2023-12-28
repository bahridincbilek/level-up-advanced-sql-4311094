

SELECT strftime('%Y', soldDate) AS years,
        strftime('%m', soldDate) as months, 
       SUM(salesAmount) as MonthSales,
      SUM(SUM(salesAmount)) OVER(PARTITION BY strftime('%Y', soldDate) 
      ORDER BY strftime('%Y', soldDate),strftime('%m', soldDate) ) AS YearSales
FROM sales
GROUP BY years, months
ORDER BY years, months
