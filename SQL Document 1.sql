--1. How many actors are there with the last name ‘Wahlberg’?
select COUNT(last_name)
from actor
where last_name = 'Wahlberg';

--2. How many payments were made between $3.99 and $5.99?
select COUNT(amount)
from payment
where amount between 3.99 and 5.99;

--3. What film does the store have the most of?
select film_id, COUNT(film_id)
from inventory
group by film_id
order by COUNT(film_id) desc;

--4. How many customers have the last name ‘William’?
select last_name
from actor
where last_name = 'William';

--5. What store employee sold the most rentals?
select staff_id, COUNT(staff_id)
from payment
group by staff_id
order by COUNT(staff_id) desc;

--6. How many different district names are there?
select district, COUNT(district)
from address
group by district
order by COUNT(district);

--7. What film has the most actors in it?
select film_id, sum(actor_id)
from film_actor
group by film_id
order by sum(actor_id) desc;

--8. From store_id 1, how many customers have a last name ending with ‘es’?
select last_name
from customer
where last_name like '%es';

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430?
select amount, COUNT(*) as rentals
from payment
where customer_id between 380 and 430
group by amount
having COUNT(*) > 250;

--10. Within the film table, how many rating categories are there? And what rating has the most movies total?
select rating, COUNT(*) as films
from film
group by rating;