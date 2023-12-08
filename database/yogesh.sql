create database yog;

use yog;

CREATE TABLE Persons
(
PersonID int,
LastName varchar(255),
FirstName varchar(255),
Address varchar(255),
City varchar(255)
);

select * from Persons;

insert into persons value
(4,"pran","la","borivali","Amarvati"),
(5,"veenet","po","malad","delhi");

alter table persons
add age int;

insert into persons (age) 
value (23),
	(21),
    (26),
    (20);

use yog;

CREATE TABLE Employees
(
Workingid int,
empname varchar(255),
empadd varchar(255),
city varchar(255),
work_time varchar(255)
);



insert into Employees value
(1,'yogesh','borivli','Maha',20),
(2,'Pranali','borivali','delhi',25),
(3,'xyz','pune','Maha',30),
(4,'venit','bandra','Maha',21),
(6,'jainab','nashik','Maha',34),
(7,'zainab','nashik','Maha',24),
(8,'srk','nashik','Maha',14),
(9,'salman','nashik','Maha',34),
(10,'fatima','nashik','Maha',44),
(11,'fareen','nashik','Maha',54),
(12,'javed','nashik','Maha',14),
(13,'talib','nashik','Maha',24),
(14,'kalpesh','nashik','Maha',24),
(15,'wasu','nashik','Maha',14),
(16,'ninath','dhaisr','Maha',10),
(17,'rutuja','kashimira','Maha',12),
(18,'varsha','jaunpur','Maha',14),
(19,'deepika','vasai','Maha',16),
(20,'sunnyleone','miraroad','Maha',19),
(21,'pinky','nagpur','Maha',20),
(22,'punkaj','pune','Maha',54);

select * from Employees;
deli
create trigger emppp
before insert on Employees for each row
begin
if new.work_time > 20 then set new.work_time = 10;
end if;
end//



     
     
     