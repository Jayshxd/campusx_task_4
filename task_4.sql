--  Find top-5 most sold products.
select t1.Name,count(*) as 'sold' from products t1
join sales t2
on t1.ProductID = t2.ProductID
group by t1.Name
order by sold desc
limit 5;


