-- For each year, what percentage of all encounters belonged to each encounter class (ambulatory, outpatient, wellness, urgentcare, emergency, and inpatient)?

select
	year(start) as my_year,
	round((sum(case when encounterclass = "ambulatory" then 1 else 0 end)/count(*)*100), 2) as ambulatory,
    round((sum(case when encounterclass = "outpatient" then 1 else 0 end)/count(*)*100), 2) as outpatient,
    round((sum(case when encounterclass = "wellness" then 1 else 0 end)/count(*)*100), 2) as wellness,
    round((sum(case when encounterclass = "urgentcare" then 1 else 0 end)/count(*)*100), 2) as urgentcare,
    round((sum(case when encounterclass = "emergency" then 1 else 0 end)/count(*)*100), 2) as emergency,
    round((sum(case when encounterclass = "inpatient" then 1 else 0 end)/count(*)*100), 2) as inpatient
from
	encounters
group by
	my_year
order by
	my_year