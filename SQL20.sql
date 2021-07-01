# JOINS
# JOINS -- only matxhed records
# Left Joins --> matched records + unmatched records from Left Table
# Right Joins --> matched records + unmatched records from Right Table
# Full Joins --> matched records + unmatched records from Left Table + unmatched records from Right Table
use sakila;
select * from actor;
select * from film_actor;

select * from actor inner join film_actor 
on 
actor.actor_id = film_actor.actor_id;

select * from actor left join film_actor 
on 
actor.actor_id = film_actor.actor_id;

select * from actor right join film_actor 
on
actor.actor_id = film_actor.actor_id;

select * from actor full join film_actor 
on 
actor.actor_id = film_actor.actor_id;




