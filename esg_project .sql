DROP TABLE site_summary;


CREATE TABLE site_summary (
    site_id TEXT,
    company_id INT,
    site_name TEXT,
    country TEXT,
    state TEXT,
    city TEXT,
    site_type TEXT,
    business_unit TEXT,
    employees_site INT,
    scope_1_tco2e NUMERIC,
    scope_2_tco2e NUMERIC,
    scope_3_tco2e NUMERIC,
    total_tco2e NUMERIC,
    total_employees NUMERIC,
    female_employees NUMERIC,
    female_management_pct NUMERIC,
    training_hours NUMERIC,
    total_turnover_pct NUMERIC,
    lost_time_injury_rate NUMERIC,
    recordable_incidents NUMERIC,
    female_workforce_pct NUMERIC,
    training_hours_per_employee NUMERIC
);

SELECT * FROM site_summary LIMIT 10;

Q1-Which sites have the highest total emissions?

SELECT site_name, total_tco2e
FROM site_summary
ORDER BY total_tco2e DESC;

Q2- Which sites have the highest total emissions?

SELECT site_name, lost_time_injury_rate
FROM site_summary
ORDER BY lost_time_injury_rate DESC;

Q3- Which sites have the lowest female workforce percentage?
SELECT site_name, female_workforce_pct
FROM site_summary
ORDER BY female_workforce_pct ASC;


Q4-How do ESG-related metrics compare across different site types?
SELECT site_type,
       AVG(total_tco2e) AS avg_emissions,
       AVG(female_workforce_pct) AS avg_female_workforce_pct,
       AVG(lost_time_injury_rate) AS avg_ltir
FROM site_summary
GROUP BY site_type;

Q5-Among Operations sites, which locations have the highest emissions?
SELECT site_name,
       business_unit,
       total_tco2e,
       lost_time_injury_rate,
       female_workforce_pct
FROM site_summary
WHERE business_unit = 'Operations'
ORDER BY total_tco2e DESC;


Q6-Which sites have the highest training hours per employee?
SELECT site_name, training_hours_per_employee
FROM site_summary
ORDER BY training_hours_per_employee DESC;













