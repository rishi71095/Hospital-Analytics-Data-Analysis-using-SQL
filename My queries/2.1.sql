-- How many encounters had zero payer coverage, and what percentage of total encounters does this represent?

select
	round(sum(case when payer_coverage = 0.0 then 1 else 0 end) / count(1) * 100, 1) as zero_coverage_pct
from
	encounters