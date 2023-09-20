create view filmes_por_tempo as  
SELECT f.`length`, COUNT(film_id) as q 
FROM film f 
group by `length` 
ORDER BY q DESC 

select sum(q) from filmes_por_tempo