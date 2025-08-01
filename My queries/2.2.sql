-- What are the top 10 most frequent procedures performed and the average base cost for each?

select
	description,
    count(1) as procedure_count,
    round(avg(base_cost), 2) as avg_base_cost
from 
	procedures
group by
	description
order by
	procedure_count desc
limit 10

