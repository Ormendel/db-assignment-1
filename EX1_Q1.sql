#Q1
select CustomerID, sum(Unitprice * Quantity) as price
from orders as O join order_details as OD
on O.OrderID = OD.OrderID where
CustomerID like 'A%' group by
CustomerID order by sum(Unitprice*Quantity) desc
