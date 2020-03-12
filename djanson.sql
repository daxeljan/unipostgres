--Primer Inner Join
select customer.customer_id,customer.first_name,customer.last_name,
	payment.amount
	from customer 
	inner join payment on customer.customer_id=payment.customer_id

--Alias a las tablas
select c.customer_id,c.first_name,c.last_name,
	p.amount
	from customer as c
	inner join payment as p on c.customer_id=p.customer_id
	
--Alias a los campos
select c.customer_id as Id ,c.first_name as nombres,c.last_name as apellidos,
	p.amount as monto
	from customer as c
	inner join payment as p on c.customer_id=p.customer_id
	where c.customer_id=354 order by p.amount desc


select c.customer_id as id, c.first_name ||' '|| c.last_name as cliente, 
c.email as correo,ci.city as ciudad,co.country as pais, a.address as direccion1,
pa.amount
from customer as c
inner join address as a on a.address_id=c.address_id
inner join city ci on ci.city_id = a.city_id
inner join country co on co.country_id=ci.country_id
inner join payment pa on pa.customer_id=c.customer_id
where c.active =1 order by ci.city,co.country


select * from public.customer where activebool
select * from public.customer  where active <> 1

update public.customer set activebool=false where active <> 1





----Agregado
