#Q5
#DROP TEMPORARY TABLE IF EXISTS Employee_no8;

CREATE TEMPORARY TABLE Employee_no8 AS 
SELECT OrderDate FROM orders
WHERE EmployeeID=8;

SELECT employees.EmployeeID,employees.FirstName,employees.LastName,
MAX(orders.OrderDate) AS DiscoveredCOV19,
DATE_ADD(MAX(orders.OrderDate),INTERVAL 14 DAY) AS isolationUntil
FROM employees JOIN orders JOIN Employee_no8
WHERE employees.EmployeeID=orders.EmployeeID AND Employee_no8.OrderDate=orders.OrderDate
GROUP BY employees.EmployeeID
HAVING isolationUntil>='1998-05-08' AND employees.EmployeeID<>8
ORDER BY DiscoveredCOV19;

