Select DISTINCT first_name from actor as a
where a.first_name in (SELECT last_name from actor);