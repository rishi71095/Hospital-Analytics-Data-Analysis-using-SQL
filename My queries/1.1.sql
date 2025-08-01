-- How many total encounters occurred each year?

select 
    year(start) as my_year, 
    count(1) as total_encounters
from 
	encounters
group by
	my_year
order by
	my_year