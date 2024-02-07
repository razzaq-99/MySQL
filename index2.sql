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



                                           -- LIMIT CLAUSE
                                           
select * from demo.customers_data order by AnnualIncome limit 3;

select * from demo.customers_data where FirstName = "MITCHELL" limit 5;

select FirstName,LastName,BirthDate from demo.customers_data order by BirthDate desc limit 10;




                                          -- BETWEEN in mysql
select * from demo.customers_data where CustomerKey between 11000 and 11015;

select * from demo.customers_data where TotalChildren between 0 and 2;

select * from demo.customers_data where AnnualIncome between "$40,000" and "$60,000";


                                          

                                            -- IN/NOT IN in Mysql
select * from demo.customers_data;
select * from demo.customers_data where TotalChildren in (0,2);

select * from demo.customers_data where AnnualIncome in ("$20,000","$60,000");

select * from demo.customers_data where TotalChildren not in (0,2);

select * from demo.customers_data where FirstName in ("Micheal","MITCHELL") and TotalChildren in (0,2);

select FirstName,LastName,BirthDate,AnnualIncome from demo.customers_data where FirstName in ("Micheal","MITCHELL") and TotalChildren in (0,2);

select FirstName,LastName,AnnualIncome from demo.customers_data where AnnualIncome not in ("$20,000","$90,000");





                                                   -- String functions
select * from movies.flixpatrol;

-- concat() method 
select concat(Type," - ",Genre) as Overall from movies.flixpatrol;
select concat(Title," - ",Watchtime) as Popularity from movies.flixpatrol;
select concat(Title," -  ",Watchtime ) as Popularity from movies.flixpatrol;
select concat(Type," - ",Genre) as Overall from movies.flixpatrol where Genre = "Fantasy";
select concat(Type," - ",Genre) as Overall from movies.flixpatrol where Premiere = "2021";


-- length() method
select length(Type) as types from movies.flixpatrol;
select Genre , length(Genre) as Genre_length from movies.flixpatrol;
select Title, length(Title) as Title_Length from movies.flixpatrol;


-- Upper case 
select upper(Genre) as Genre from movies.flixpatrol;
select upper(Type) as Type from movies.flixpatrol;


