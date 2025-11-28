--  Find top-5 most sold products.
select t1.Name,count(*) as 'sold' from products t1
join sales t2
on t1.ProductID = t2.ProductID
group by t1.Name
order by sold desc
limit 5;


-- Find sales man who sold most no of products.
select t1.FirstName , t2.SalesPersonID as id,count(*) as 'sold' from employees as t1
join sales as t2
on t1.EmployeeID = t2.SalesPersonID
group by SalesPersonID,t1.FirstName
order by sold desc
limit 1;


-- List all customers who have made more than 10 purchases.
select t1.CustomerID,t1.FirstName,count(*) as 'purchases' from customers as t1
join sales as t2
on t1.CustomerID = t2.CustomerID
group by t1.CustomerID, t1.FirstName
having purchases >10
order by purchases desc


