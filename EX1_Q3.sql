#Q3
#DROP TEMPORARY TABLE IF EXISTS sortcategories;

CREATE TEMPORARY TABLE sortcategories AS
SELECT CategoryID,COUNT(ProductID) AS totalProducts,AVG(UnitPrice) AS averageUnitPrice
FROM products
GROUP BY CategoryID;

SELECT totalProducts,COUNT(CategoryID) AS numCategories, AVG(averageUnitPrice) AS averageUnitPrice
FROM sortcategories
GROUP BY totalProducts;



