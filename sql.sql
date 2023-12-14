
select * from customer;
select first_name from customer;
select count(first_name) from customer;
select count(distinct first_name) from customer;
select distinct first_name from customer;

select * from film;
select count(rental_rate) from film;

select count(distinct rental_rate) from film;
select rental_rate from film;
select distinct rental_rate from film;

select * from film where rental_rate > 4;

select distinct rating from film where rental_rate > 4 and replacement_cost > 19.99;


select count(distinct rating) from film where rental_rate > 4 and replacement_cost > 19.99;

select distinct rating from film;

select email,first_name from customer order by email asc;

select distinct first_name, email from customer order by 1;

select * from payment;
select payment_id from payment order by payment_date desc limit 5;
select * from film;
select count(*) from film where length <= 50;
select * from film;
select rental_duration from film where length between 70 and 120;
select * from payment where payment_date between '2007-02-01' and '2007-02-15';
select customer_id from payment where amount in (2.99,4.99);
select count(customer_id) from payment where amount not in (2.99,4.99);

select count(first_name) from customer where first_name ilike 'A%';
select count(customer_id) from customer where first_name like 'A%';

select first_name from customer where first_name like '_her%';

select count(*) from customer where first_name like 'J%';
select email from customer where first_name like 'A%' order by last_name desc;
select * from customer where first_name ilike '%A' and last_name not like '%B'order by last_name desc
limit 5;
select distinct district from address;
select count(*) from film where title like '%Truman';
select * from film where title like '%Truman';
select * from film;
select min(replacement_cost) from film;
select * from film where replacement_cost = ( select min(replacement_cost) from film);

select max(replacement_cost),film_id from film group by film_id;
select round(avg(replacement_cost),2) from film;
select round(avg(replacement_cost),2),film_id from film group by film_id;
select staff_id,round(avg(amount),2) from payment group by staff_id;
select customer_id,staff_id,avg(amount) from payment group by staff_id,customer_id order by 
customer_id,staff_id;
select * from payment;

select date(payment_date) , sum(amount) from payment group by date(payment_date) order by date(payment_date);

select staff_id,count(amount) from payment group by staff_id order by count(amount) desc;

select rating,avg(replacement_cost) from film group by rating order by avg(replacement_cost) desc;

select customer_id,sum(amount) from payment group by customer_id having sum(amount) > 5;
select customer_id,count(*) from payment group by customer_id having count(*) >= 40;
select * from film where film_id = 133;






