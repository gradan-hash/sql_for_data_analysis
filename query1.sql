select * from sales;

select SaleDate,Amount,Customers from sales;

select SaleDate,Amount,Boxes, Amount/Boxes from sales;

select SaleDate,Amount,Boxes, Amount/Boxes 'amount_per_box'  from sales;


 -- ASC AUTOMATIC
 
select * from sales
where Amount >10000
order by Amount desc;

SELECT * from sales
where geoid = 'g1'
order by PID,Amount desc;

select * from sales
where Amount >10000 and SaleDate >='2021-01-01';

select SaleDate,Amount from sales
where Amount >10000 and year(SaleDate) = 2022
order by Amount desc;

select * from sales
where boxes >0  and boxes <=50;

select * from sales
where Boxes between 0 and 50;

select SaleDate,Amount,Boxes,weekday(SaleDate) as 'day_of_week' from sales
where weekday(SaleDate) = 4; 

select * from people;

select  *from people
where team = "yummies" or team = "delish" ;

select * from people
where team in ('delish','jucias');

-- b first
select * from people 
where Salesperson like 'b%';

-- b anywhere
select * from people 
where Salesperson like '%b%';

select * from sales;

-- using case categorization of data
select  SaleDate,Amount ,
		case when Amount < 1000 then 'under 1k'
			when Amount < 5000 then 'under 5k'
            when Amount <10000 then 'under 10k'
		else '10k or more'
        end as 'Amount Category'
from sales ;






