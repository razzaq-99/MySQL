
                                              -- SELECT CLAUSE
SELECT * FROM demo.customers_data;

select FirstName,BirthDate from demo.customers_data;
select FirstName,Gender,MaritalStatus from demo.customers_data;
select Occupation from demo.customers_data;


                                              -- WHERE CLAUSE
select * from demo.customers_data where Gender = 'F';

select * from demo.customers_data where Occupation = "Manual";

select * from demo.customers_data where TotalChildren = 5;

select LastName,AnnualIncome,TotalChildren from demo.customers_data where FirstName = "MICHEAL";

select LastName from demo.customers_data where AnnualIncome < '$20,000';

select FirstName,LastName,TotalChildren,AnnualIncome from demo.customers_data where CustomerKey = 11000;

