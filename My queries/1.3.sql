-- What percentage of encounters were over 24 hours versus under 24 hours?

select
	round(sum(case when timestampdiff(hour, start, stop) >= 24 then 1 else 0 end)  / count(1) * 100, 2) as less_than_24,
	round(sum(case when timestampdiff(hour, start, stop) < 24 then 1 else 0 end)  / count(1) * 100, 2) as more_than_24
from
	encounters
    
