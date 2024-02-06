                                      -- AND , OR , NOT 
                                      
select * from demo.customers_data where FirstName = "Micheal" and MaritalStatus = 'S';
select BirthDate,EmailAddress,AnnualIncome from demo.customers_data where FirstName = "Micheal" and MaritalStatus = 'M';
select FirstName,LastName,AnnualIncome from demo.customers_data where Gender='F' and TotalChildren = 5;


select FirstName,LastName,EducationLevel  from demo.customers_data where FirstName="Micheal" or LastName="MITCHELL";
select FirstName,LastName,EducationLevel,TotalChildren from demo.customers_data where EducationLevel="Bachelors" or TotalChildren=5;


select * from demo.customers_data where not Gender='M';
select * from demo.customers_data where not Gender='NA';
select * from demo.customers_data where not EmailAddress='katherine23@adventure-works.com';
select Prefix,AnnualIncome,TotalChildren from demo.customers_data where not FirstName = "Micheal";





                                           -- LIKE OPERATOR
select * from demo.customers_data where FirstName like "%CHAR%";
select * from demo.customers_data where FirstName like "CHAR%";

select FirstName,LastName,Gender,BirthDate from demo.customers_data where LastName like "%ILL";
select * from demo.customers_data where BirthDate like "%1980";

select FirstName,LastName,AnnualIncome,BirthDate from demo.customers_data where BirthDate like "%1980";







                                             -- Order by
select * from demo.customers_data order by BirthDate asc;
select * from demo.customers_data order by CustomerKey desc;

select FirstName,LastName,BirthDate,AnnualIncome,TotalChildren from demo.customers_data order by TotalChildren asc;

select * from demo.customers_data order by FirstName asc, TotalChildren desc;

select * from demo.customers_data order by LastName asc , AnnualIncome desc;

select * from demo.customers_data order by FirstName,LastName asc;


