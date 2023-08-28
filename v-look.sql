select GeoID,sum(Amount) from sales 
group by GeoID;

select GeoID,sum(Amount),avg(amount),sum(Boxes) from sales 
group by GeoID;

select g.Geo,sum(Amount),avg(amount),sum(Boxes)
 from sales s
 join geo g on s.GeoID = g.GeoID
 group by g.Geo;
 
 
select s.SaleDate,pr.Category,p.Team, sum(Boxes),sum(Amount) from sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID = s.PID
group by pr.Category,p.Team;


select s.SaleDate,pr.Category,p.Team, sum(Boxes),sum(Amount) from sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID = s.PID
group by pr.Category,p.Team
order by pr.Category,p.Team;


select s.SaleDate,pr.Category,p.Team, sum(Boxes),sum(Amount) from sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID = s.PID
where p.Team = ""
group by pr.Category,p.Team
order by pr.Category,p.Team;

select s.SaleDate,pr.Product,sum(Amount) as "Total Amount" from sales s
join products pr on pr.PID = s.PID
group by pr.Product
order by "Total Amount" desc;

select s.SaleDate,pr.Product,sum(Amount) as "Total Amount" from sales s
join products pr on pr.PID = s.PID
group by pr.Product
order by "Total Amount" desc
limit 10;







 
 








