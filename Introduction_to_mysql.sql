                                   -- Case Operators

select * from classic_models.products;

select productName,quantityInStock,
case
    when quantityInStock < 1000 then "urgent need of stocks"
    else "no requirement still"
end as Production_info
from classic_models.products;


select productName,buyPrice,
case 
    when buyPrice < 50  then "least value"
    when buyPrice > 100 then "Looks good"
    else "Still need some improvemnets"
end as Sale_report
from classic_models.products;






								-- Group By
select * from classic_models.products;
select productLine,sum(buyPrice) from classic_models.products group by productLine;
select productName,sum(quantityInStock) from classic_models.products group by productName;
select productLine,avg(buyPrice) from classic_models.products group by productLine;
select productLine,max(buyPrice) from classic_models.products group by productLine;
select productLine,count(buyPrice) from classic_models.products group by productLine;




                                  -- Having Clause
select * from classic_models.products;
select productName, sum(quantityInStock) from classic_models.products group by productName having sum(quantityInStock) < 1000;
select productName, sum(quantityInStock) from classic_models.products group by productName having sum(quantityInStock) < 500 order by avg(quantityInStock) desc;
select productName, avg(quantityInStock) from classic_models.products group by productName having avg(quantityInStock) < 1000 order by avg(quantityInStock) asc;




                                            -- Joins 
select * from classic_models.order_details;
select * from classic_models.products;


-- Inner Join in mysql 
select products.productName,order_details.quantityOrdered from classic_models.products
inner join classic_models.order_details on 
classic_models.products.productCode = classic_models.order_details.productCode;

select products.productName,products.buyPrice,order_details.quantityOrdered,order_details.priceEach
from classic_models.products inner join classic_models.order_details on 
classic_models.products.productCode = classic_models.order_details.productCode;

select products.productName,order_details.quantityOrdered from classic_models.products
inner join classic_models.order_details on 
classic_models.products.productCode = classic_models.order_details.productCode order by quantityOrdered asc;

select products.productName,sum(order_details.quantityOrdered) from classic_models.products
inner join classic_models.order_details on 
classic_models.products.productCode = classic_models.order_details.productCode group by productName;



-- left and right join
select products.productName,order_details.quantityOrdered from 
classic_models.products left join classic_models.order_details on 
classic_models.products.productCode = classic_models.order_details.productCode;

select products.productName,order_details.quantityOrdered from 
classic_models.products left join classic_models.order_details on 
classic_models.products.productCode = classic_models.order_details.productCode
order by quantityOrdered asc;

select products.productName, sum(order_details.quantityOrdered) from 
classic_models.products left join classic_models.order_details on 
classic_models.products.productCode = classic_models.order_details.productCode 
group by productName ;

select products.productName, sum(order_details.quantityOrdered) from 
classic_models.products right join classic_models.order_details on 
classic_models.products.productCode = classic_models.order_details.productCode 
group by productName ;

select products.productName,order_details.quantityOrdered from 
classic_models.products left join classic_models.order_details on 
classic_models.products.productCode = classic_models.order_details.productCode;



-- cross join
select products.productName,order_details.quantityOrdered from 
classic_models.products cross join classic_models.order_details on 
classic_models.products.productCode = classic_models.order_details.productCode;

select * from classic_models.products cross join classic_models.order_details;

select products.productName,order_details.quantityOrdered from 
classic_models.products cross join classic_models.order_details on 
classic_models.products.productCode = classic_models.order_details.productCode
order by quantityOrdered desc;


-- Full Join 
select * from classic_models.order_details;
select * from classic_models.products;


select products.productName,order_details.quantityOrdered from 
classic_models.products full join classic_models.order_details on 
classic_models.products.productCode = classic_models.order_details.productCode
order by quantityOrdered desc;


select * from classic_models.products full join classic_models.order_details;






                                      -- Subqueries

select * from classic_models.order_details;
select * from classic_models.products;

select avg(buyPrice) from classic_models.products;
select * from classic_models.products where buyPrice > 53.38;

select * from classic_models.products where buyPrice >
(select avg(buyPrice) from classic_models.products);

select * from classic_models.products where buyPrice <
(select avg(buyPrice) from classic_models.products);

select * from classic_models.products where buyPrice =
(select max(buyPrice) from classic_models.products);

select * from classic_models.products where buyPrice =
(select min(buyPrice) from classic_models.products);

select orderLineNumber from classic_models.order_details where
order_details.productCode not in (select products.productName from classic_models.products);

select products.productName from classic_models.products where
products.productCode not in (select order_details.orderLineNumber from classic_models.order_details);

select products.productName from classic_models.products where
products.productCode not in (select order_details.orderLineNumber from classic_models.order_details);