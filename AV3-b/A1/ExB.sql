select * from actor as a
where a.first_name In (SELECT last_name from actor as b
					   WHERE a.first_name=b.last_name);

						 
						
						