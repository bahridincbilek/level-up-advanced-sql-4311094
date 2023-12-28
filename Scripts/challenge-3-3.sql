SELECT 	soldDate, salesAmount
FROM sales
WHERE inventoryId IN ( 
  SELECT inventoryId
  FROM inventory
  WHERE modelId IN (
    SELECT modelId
    FROM model
    WHERE EngineType = 'Electric') )