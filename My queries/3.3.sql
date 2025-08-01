-- 3.3	Which patients had the most readmissions?

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
	patient,
    count(*) as readmission_count
from
	cte
where
	datediff(next_admission, stop) < 30
group by
	patient
order by
	readmission_count desc
    