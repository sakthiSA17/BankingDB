show databases;
use employee;
show tables;
create table employee ( eid int primary key,ename varchar(50),gender char(1), email varchar (100) unique ,dept varchar (5),age int ,  place varchar(20) default "chennai", salary int);
INSERT INTO employee (eid, ename, gender, email, dept, age, salary)
VALUES (101, 'sakthi', 'M', 'sakthisingh2005@gmail.com', 'IT', 20, 50000),(102,'akshi','F','akshitasakthi@gmail.com','IT',20,45000),(103,'prem','M','premnathsingh@gmail.com','HR',35,43000),(104,'raji','F','rajishwari2006@gmail.com','AC',26,43000),
(105,'dharani','M','rvdharanidharan@gmail.com','SL',24,36000);
select * from employee;

create table prod (prodid varchar(10) primary key,prodname varchar(50), category varchar(10),price float);
alter table prod modify category varchar(25);
insert into prod values("p001","laptop","electronics",25000);
insert into prod values("p002","moblie","electronics",20000);
insert into prod values ("p003","table","furniture",7000),("p004","chair","furniture",500),("p005","pen","stationary",150);
select * from prod;

-- to select price between 20000 and 25000 without using between 
select * from prod where price>=20000 and price<=25000;

select prodname from prod order by prodname desc;

select PRODNAME, PRICE, CASE WHEN PRICE >12000 THEN "BEST" WHEN PRICE > 10000 THEN "AVERAGE " ELSE "LOW" END AS STATUS FROM PROD;

-- over fuction
select prodname , price, avg(price) over () as "avgprice" from prod;

select prodname , price, max(price) over () as "maxprice" from prod;

select prodname , price, row_number() over() as " ROW Order" from prod;

update prod set price = 20000 where prodid = "p003";

select prodname , price, dense_rank() over (order by price desc) as "ranking" from prod;

select prodname , price, rank() over (order by price desc) as "ranking" from prod;


select prodname , price, row_number() over ( order by price desc) as "desc" from prod;

select * from prod;

select * from employee where ename like "A%" or ename like "S%" ORDER BY ENAME DESC;

-- TO DISPLAY P001 AND P005
SELECT * FROM prod WHERE prodid IN ("p001","p005"); 
-- PRODUCTNAME ENDING "E"
select * from prod where prodname like "%e";
-- DISPLAY THE DATA OF FURTINURE CATEGORY 
select * from prod where category in ("furniture");
-- FURNITURE CATEGORY WHERE PRICE MORE THAN 10000
select * from prod where price < 10000 and category in("furniture");
-- PRODUCT NAME WITH 5 LETTERS 
select prodname from prod where length(prodname) =5;
-- PRICE BTW 10000 TO 20000
select * from prod where price >=10000 and price <=20000;
-- DISPLAY PRODCUT NAME AND PRICE ONLY
select prodname , price from prod;
-- WHAT ARE THE CATEGORY AND HOW MANY prod
 select count(distinct category) as no_of_category from prod;
-- 10% OF DISCOUNT TO EACH PRODUCT 
alter table prod add column discount decimal(7,2);
update prod set discount=price*10/100 where category= "furniture";
-- CHANGE COLUMN NAME TO PROD_NAME 
alter table prod change column prodname prodnames varchar(30);
