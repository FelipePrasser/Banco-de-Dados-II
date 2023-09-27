start transaction;

delete from film_actor;

select COUNT(*) from film_actor;

rollback;

select COUNT(*) from film_actor;