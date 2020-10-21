/**
*Q4 - Output: ID of category and number of products in this category
*Condition: The products were ordered by person which his name ends with "Sommer"
Note: If the condition is not true for the specific category, means totalProducts=0, it will not be shown in the grid!
*/

SELECT categories.CategoryID,COUNT(products.ProductID) AS totalProducts
FROM categories JOIN products JOIN order_details JOIN orders
WHERE categories.CategoryID=products.CategoryID 
AND orders.OrderID = order_details.OrderID 
AND orders.CustomerID=(SELECT CustomerID FROM customers WHERE ContactName LIKE '%Sommer')
AND order_details.ProductID = products.ProductID
GROUP BY categories.CategoryID
ORDER BY categories.CategoryID;