Select a.first_name, a.last_name, f.title, f.description from film_actor fa 
inner join actor a on fa.actor_id = a.actor_id 
inner join film f on fa.film_id = f.film_id  