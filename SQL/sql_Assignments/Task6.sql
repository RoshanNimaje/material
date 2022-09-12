--use sales_db;
--1)Write a query that counts the number of salespeople registering orders for each day. (If a
--salesperson has more than one order on a given day, he or she should be counted only once.).

 select odate ,count(distinct snum)from orders group by odate 
 

--2)Write a query on the Customers table that will find the highest rating in each city. Put the output in
--this form:
--For the city (city), the highest rating is : (rating).

Select city ,max(rating) as highestrating from customers  group by city 

--3)Write a query that totals the orders for each day and places the results in descending order.

 select odate ,count(onum) as Number_orders  from orders group by odate order by count(onum) desc

--4)Write a query that selects the total amount in orders for each salesperson for whom this total is
---greater than the amount of the largest order in the table.

 Select snum,sum(amt) as total_amt 
 from orders 
 group by snum 
 having (sum(amt)>(select max(amt) from orders))

--5)Write a query that selects the highest rating in each city
Select city , max(rating) as highes_rating from customers group by city

--6)Largest order taken by each salesperson with order value more than Rs.3000. 
Select snum,max(amt) as Largest_order from orders group by snum 
having max(amt)>3000 

-- 7. Select each customer smallest order
select cnum , min(amt) as smallest_order from orders group by cnum