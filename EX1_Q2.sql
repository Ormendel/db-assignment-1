#Q2

SELECT orders.OrderID 
FROM employees JOIN customers JOIN orders
WHERE customers.CustomerID=orders.CustomerID
AND employees.City = customers.City
AND orders.EmployeeID=employees.EmployeeID
ORDER BY orders.OrderID;
