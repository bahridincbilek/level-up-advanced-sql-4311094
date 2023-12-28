SELECT e1.firstName, e1.lastName,e1.title, 
e2.firstName AS ManagerFirstName,
e2.lastName AS ManagerLastName

FROM employee AS e1

INNER JOIN employee AS e2
ON e1.managerId = e2.employeeId


