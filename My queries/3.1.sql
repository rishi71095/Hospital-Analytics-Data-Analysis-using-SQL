-- How many unique patients were admitted each quarter over time?

select
	concat(cast(year(start) as char), "-", cast(quarter(start) as char)) as year_qtr,
	count(distinct(patient)) as unique_patients
from 
	encounters
group by
	concat(cast(year(start) as char), "-", cast(quarter(start) as char))