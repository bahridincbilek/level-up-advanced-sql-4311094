WITH deneme AS (SELECT strftime('%Y-%m', soldDate) AS MonthSold,
  COUNT(*) AS NumberCarsSold,
  LAG(COUNT(*),1,0) OVER calMonth 
  AS LastMonthSold

FROM sales
GROUP BY strftime('%Y-%m', soldDate)
WINDOW calMonth AS  ( ORDER BY strftime('%Y-%m', soldDate) ) 
ORDER BY strftime('%Y-%m', soldDate))

select NumberCarsSold,LastMonthSold,NumberCarsSold-LastMonthSold from deneme
