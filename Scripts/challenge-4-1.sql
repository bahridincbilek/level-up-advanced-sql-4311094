SELECT e.firstName,e.lastName,m.model,
        count(m.model) as NumberSold,
        RANK() OVER( PARTITION BY e.employeeId ORDER BY count(model) desc
         ) AS RANK

FROM employee e
INNER JOIN sales s
    ON e.employeeId = s.employeeId
INNER JOIN inventory i
    ON s.inventoryId = i.inventoryId
INNER JOIN model m
    ON i.modelId = m.modelId
GROUP BY e.firstName, e.lastName, m.model

