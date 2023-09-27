set autocommit=0;

start transaction;

select count(*) from film_actor;

insert into film_actor values (1, 2, now());

select count(*) from film_actor;

rollback;

select count(*) from film_actor;

set autocommit=1;

show variables like 'autocommit';
