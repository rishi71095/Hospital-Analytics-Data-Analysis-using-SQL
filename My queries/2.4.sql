-- What is the average total claim cost for encounters, broken down by payer?

select
	p.name,
	round(avg(e.total_claim_cost),2) as avg_total_claim_cost
from
	encounters e
left join
	payers p
    on e.payer = p.id
group by
	p.name
order by
	avg_total_claim_cost desc