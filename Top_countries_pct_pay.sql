/*
-- Query: WITH country_pct AS (
SELECT
	Country,
    ROUND(SUM(highest_yearly_earnings),0) AS total_yearly_earnings
FROM global_youtube_statistics
GROUP BY Country
ORDER BY total_yearly_earnings DESC
),

top_countries AS (
	 SELECT Country
     FROM country_pct
     ORDER BY total_yearly_earnings DESC
     LIMIT 8
     ) -- get top 

SELECT
    SUM(total_yearly_earnings) AS total_earnings,
    ROUND(1.0 * SUM(CASE WHEN Country IN (SELECT Country FROM top_countries WHERE Country = 'United States') THEN total_yearly_earnings ELSE 0 END) 
        / NULLIF(SUM(total_yearly_earnings), 0) * 100, 2) AS pct_us,
    ROUND(1.0 * SUM(CASE WHEN Country IN (SELECT Country FROM top_countries WHERE Country = 'India') THEN total_yearly_earnings ELSE 0 END) 
        / NULLIF(SUM(total_yearly_earnings), 0) * 100, 2) AS pct_india,
    ROUND(1.0 * SUM(CASE WHEN Country IN (SELECT Country FROM top_countries WHERE Country = 'Brazil') THEN total_yearly_earnings ELSE 0 END) 
        / NULLIF(SUM(total_yearly_earnings), 0) * 100, 2) AS pct_brazil,
    ROUND(1.0 * SUM(CASE WHEN Country IN (SELECT Country FROM top_countries WHERE Country = 'South Korea') THEN total_yearly_earnings ELSE 0 END) 
        / NULLIF(SUM(total_yearly_earnings), 0) * 100, 2) AS pct_south_korea,
    ROUND(1.0 * SUM(CASE WHEN Country IN (SELECT Country FROM top_countries WHERE Country = 'United Kingdom') THEN total_yearly_earnings ELSE 0 END) 
        / NULLIF(SUM(total_yearly_earnings), 0) * 100, 2) AS pct_uk,
    ROUND(1.0 * SUM(CASE WHEN Country IN (SELECT Country FROM top_countries WHERE Country = 'Pakistan') THEN total_yearly_earnings ELSE 0 END) 
        / NULLIF(SUM(total_yearly_earnings), 0) * 100, 2) AS pct_pakistan,
    ROUND(1.0 * SUM(CASE WHEN Country IN (SELECT Country FROM top_countries WHERE Country = 'Argentina') THEN total_yearly_earnings ELSE 0 END) 
        / NULLIF(SUM(total_yearly_earnings), 0) * 100, 2) AS pct_argentina,
    ROUND(1.0 * SUM(CASE WHEN Country IN (SELECT Country FROM top_countries WHERE Country = 'Russia') THEN total_yearly_earnings ELSE 0 END) 
        / NULLIF(SUM(total_yearly_earnings), 0) * 100, 2) AS pct_russia
FROM country_pct
WHERE Country IN (SELECT Country FROM top_countries)
-- Date: 2024-10-07 23:17
*/
INSERT INTO `` (`total_earnings`,`pct_us`,`pct_india`,`pct_brazil`,`pct_south_korea`,`pct_uk`,`pct_pakistan`,`pct_argentina`,`pct_russia`) VALUES (5261517242,41.42,34.05,6.61,6.09,3.34,2.99,2.86,2.64);
