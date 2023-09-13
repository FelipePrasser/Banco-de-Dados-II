Select * from actor as a
WHERE EXISTS (SELECT last_name from actor b
			  where a.first_name=b.last_name);
			  
