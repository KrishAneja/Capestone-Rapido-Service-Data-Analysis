-- Creating Database
create database Rapido_dataset;
use rapido_dataset;

-- Viewing Schema
select * from rapido_dataset;
desc rapido_dataset;

-- Changing irrelevant data types
alter table rapido_dataset
modify date date;

alter table rapido_dataset
modify time time;

alter table rapido_dataset
modify ride_charge float,
modify misc_charge float,
modify total_fare float;

alter table rapido_dataset
modify distance float;

-- Updating Null Values
set sql_safe_updates = 0;
update rapido_dataset
set ride_charge =  0
where ride_charge is null;

update rapido_dataset
set misc_charge = 0
where misc_charge is null;

update rapido_dataset
set total_fare = 0
where total_fare is null;

update rapido_dataset
set payment_method =  "Ride Cancelled"
where payment_method = "Not Applicable";

-- Analysing Null Values
select  ride_id, ride_charge, misc_charge, total_fare, payment_method 
from rapido_dataset 
where ride_charge is null;

select  ride_id, ride_charge, misc_charge, total_fare, payment_method 
from rapido_dataset 
where ride_charge is not null;

select  ride_id, ride_charge, misc_charge, total_fare, payment_method 
from rapido_dataset 
where ride_status = "cancelled";

show databases;


