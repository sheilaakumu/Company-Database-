CREATE DATABASE COMPANY;
use company;
CREATE TABLE Worker (
Worker_id varchar(3) primary key,
First_Name varchar (20),
Last_Name varchar (20),
Salary int,
Joining_Date date,
Department varchar (20));

insert into Worker(Worker_id, First_name, Last_Name, salary, Joining_Date, Department) values
('001', 'Monika', 'Arora', 100000, '2014-02-20', 'HR'),
('002', 'Niharika', 'Verma', 80000, '2014-06-11', 'Admin'),
('003', 'Vishal', 'Singhal', 300000, '2014-02-20', 'HR'),
('004', 'Amitabh', 'Singh', 500000, '2014-02-20', 'Admin'),
('005', 'Vivek', 'Bhati', 500000, '2014-06-11', 'Admin'),
('006', 'Vipul', 'Diwan', 200000, '2014-06-11', 'Account'),
('007', 'Satish', 'Kumar', 75000, '2014-01-20', 'Account'),
('008', 'Geetika', 'Chauhan', 90000, '2014-04-11', 'Admin');

select * from worker;

create table Bonus(
Worker_Ref_id int,
Bonus_date date,
Bonus_Amount int);

insert into Bonus (Worker_Ref_Id, Bonus_date, Bonus_amount) values
(1, '2016-02-20', 5000),
(2, '2016-06-11', 3000),
(3, '2016-02-20', 4000),
(1, '2016-02-20', 4500),
(2, '2016-06-11', 3500);

select * from bonus;

create table Title(
Worker_Ref_Id int,
Worker_Title varchar (50),
Affected_From date);

insert into Title(Worker_Ref_Id, Worker_Title, Affected_From) values
(1, 'Manager', '2016-02-20'),
(2, 'Executive', '2016-06-11'),
(8, 'Executive', '2016-06-11'),
(5, 'Manager', '2016-06-11'),
(4, 'Asst. Manager', '2016-06-11'),
(7, 'Executive', '2016-06-11'),
(6, 'Lead', '2016-06-11'),
(3, 'Lead', '2016-06-11');

select * from Title;

#Fetch "first_name" from Worker table using the alias "Worker_Name"
select first_name as Worker_Name
from worker;

#Fetch "first_name" from Worker table in uppercase 
select upper(first_name)
from worker;

#Fetch unique values of department from Worker table
select distinct department
from worker;

#total departments are there in the company
SELECT COUNT(DISTINCT department) as Total_Dept
FROM worker;

#Print first 3 characters of first_name from worker table
SELECT SUBSTRING(FIRST_NAME, 1, 3) AS FIRST_3_CHAR
FROM Worker;

#fetch all details from worker table, order by first_name ascending
select * from worker
order by first_name asc;

#fetch details of all workers whose first name contains 6 alphabets ends in 'h'
select *
from worker
where first_name like '%h' and length(first_name)=6;

#Fetch first_name and last_name of employees with salary more than or equal to 50,000 and less than or equal to 100,000
select first_name, last_name
from worker
where salary between 50000 and 100000;

#Fetch number of workers for each department in descending order
select department,count(*) as Num_workers
from worker
group by department
order by Num_workers desc;

#print details of workers who are also managers
select worker.worker_id, worker.first_name, worker.last_name, title.worker_title
from worker
inner join title
on worker.worker_id=title.worker_ref_id
where title.worker_title = 'Manager';

#fetch departments along with total salaries paid to each of them
select department, sum(salary) AS Total_Salary
from worker
group by department;