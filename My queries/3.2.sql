-- 3.2	How many patients were re-admitted within 30 days of a previous encounter?

with cte as (
	select
		patient,
		start,
		stop,
		lead(start) over(partition by patient order by start asc) as next_admission
	from
		encounters
)

select
	count(distinct(patient)) as readmissions
from
	cte
where
	datediff(next_admission, stop) < 30
