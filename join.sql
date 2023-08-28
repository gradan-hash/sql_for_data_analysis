select * from sales;
select * from people;

select s.SaleDate,s.Amount,p.Salesperson,s.SPID,p.SPID
from sales as s 
join people as p on  p.SPID = s.SPID ;


select s.SaleDate,s.Amount,pr.Product from sales s
left join products pr on pr.PID = s.PID ;

select s.SaleDate,s.Amount,p.Salesperson,pr.Product,p.Team
from sales as s 
join people as p on  p.SPID = s.SPID 
join products pr on pr.PID = s.PID;

select s.SaleDate,s.Amount,p.Salesperson,pr.Product,p.Team
from sales as s 
join people as p on  p.SPID = s.SPID 
join products pr on pr.PID = s.PID
where s.Amount < 500
and p.Team = 'yummies';



select s.SaleDate,s.Amount,p.Salesperson,pr.Product,p.Team
from sales as s 
join people as p on  p.SPID = s.SPID 
join products pr on pr.PID = s.PID
where s.Amount < 500
and p.Team ='';


select s.SaleDate,s.Amount,p.Salesperson,pr.Product,p.Team,g.Geo
from sales as s 
join people as p on  p.SPID = s.SPID 
join products pr on pr.PID = s.PID
join geo g on g.GeoID = s.GeoID
where s.Amount < 500
and p.Team =''
and g.Geo in ('New Zealand ', 'india')
order by s.SaleDate;





