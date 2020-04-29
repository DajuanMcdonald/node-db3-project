-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for      in the database. Shows 77 records.
SELECT p.ProductName, c.CategoryName FROM [Product] as p
JOIN [Category] as c ON p.CategoryId is c.Id

ORDER BY ProductName DESC;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT o.id, s.CompanyName , o.ShippedDate, o.OrderDate 
 FROM [Order] as o
 JOIN [Shipper] as s ON  o.ShipVia is s.Id
 WHERE o.OrderDate < '2012-08-09'
 ORDER BY o.OrderDate DESC


-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT  p.ProductName, od.Quantity , od.OrderId FROM [Order]  as o
JOIN [OrderDetail] as od ON o.Id is od.OrderId
JOIN [Product] as p ON od.ProductId is p.Id
WHERE o.Id is 10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT c.CompanyName, o.Id , e.LastName FROM Customer as c
JOIN [Order] as o ON  c.Id is o.CustomerId
JOIN [Employee] as e ON o.EmployeeId is e.Id
