-- What are the top 10 procedures with the highest average base cost and the number of times they were performed?

select
	description,
    round(avg(base_cost), 2) as avg_base_cost,
	count(1) as procedure_count
from 
	procedures
group by
	description
order by
	avg_base_cost desc
limit 10