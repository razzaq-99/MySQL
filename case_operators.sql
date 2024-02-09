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

