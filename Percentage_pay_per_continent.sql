/*
-- Query: WITH Pct_pay AS (
SELECT
	/*group countries to their respective continent*/
	CASE
     WHEN Country IN ("Algeria","Angola","Benin","Botswana","Burkina Faso","Burundi","Cabo Verde","Cameroon","Central African Republic",
          "Chad","Comoros","Congo, Dem. Rep", "Congo, Rep.","Cote d'Ivoire","Djibouti","Egypt","Equatorial Guinea","Eritrea",
          "Eswatini (formerly Swaziland)","Ethiopia","Gabon","Gambia","Ghana","Guinea","Guinea-Bissau","Kenya", "Lesotho",
          "Liberia",'Libya',"Madagascar","Malawi","Mali","Mauritania","Mauritius","Morocco","Mozambique","Namibia",
          "Niger","Nigeria","Rwanda","Sao Tome and Principe","Senegal","Seychelles","Sierra Leone","Somalia","South Africa",
          "South Sudan","Sudan","Tanzania""Togo","Tunisia","Uganda","Zambia","Zimbabwe") THEN 'Africa'

     WHEN Country IN ("Albania","Andorra", "Armenia","Austria","Azerbaijan","Belarus","Belgium","Bosnia and Herzegovina",
          "Bulgaria","Croatia","Cyprus","Czechia","Denmark","Estonia","Finland","France","Georgia","Germany",
          "Greece","Hungary","Iceland","Ireland","Italy","Kazakhstan","Kosovo","Latvia","Liechtenstein","Lithuania",
          "Luxembourg","Malta","Moldova","Monaco","Montenegro","Netherlands","Macedonia, FYR","Norway","Poland","Portugal",
          "Romania","Russia","San Marino","Serbia","Slovakia","Slovenia","Spain","Sweden","Switzerland","Turkey",
         "Ukraine","United Kingdom","Vatican City") THEN 'Europe'

     WHEN Country IN ("Afghanistan","Armenia","Azerbaijan","Bahrain","Bangladesh", "Bhutan","Brunei","Cambodia","China","Cyprus",
        "Georgia","India","Indonesia","Iran","Iraq","Israel","Japan","Jordan","Kazakhstan","Kuwait","Kyrgyzstan","Laos",
        "Lebanon","Malaysia","Maldives","Mongolia","Myanmar","Nepal","North Korea","Oman","Pakistan","Palestine","Philippines",
        "Qatar","Russia","Saudi Arabia","Singapore","South Korea","Sri Lanka","Syria","Taiwan","Tajikistan","Thailand",
        "Timor-Leste","Turkey","Turkmenistan","United Arab Emirates","Uzbekistan","Vietnam","Yemen") THEN 'Asia'

     WHEN Country IN ("Antigua and Barbuda","Bahamas","Barbados","Belize","Canada","Costa Rica","Cuba","Dominica",
         "Dominican Republic","El Salvador","Grenada","Guatemala","Haiti","Honduras","Jamaica","Mexico",
        "Nicaragua","Panama","Saint Vincent and the Grenadines","United States") THEN 'North_America'

     WHEN Country IN ("Argentina","Bolivia","Brazil","Chile","Colombia","Ecuador","Guyana","Paraguay","Peru","Suriname",
         "Uruguay","Venezuela") THEN 'South_America'

     WHEN Country IN ("Australia","Fiji","Kiribati","Marshall Islands","Micronesia","Nauru","New Zealand","Palau",
         "Papua New Guinea","Samoa","Solomon Islands","Tonga","Tuvalu","Vanuatu") THEN 'Australia_and_Oceania'
	END AS continents,

    ROUND(SUM(highest_yearly_earnings),0) AS total_highest_yearly_earnings

FROM global_youtube_statistics
GROUP BY continents
ORDER BY total_highest_yearly_earnings DESC
)

SELECT
	SUM(total_highest_yearly_earnings) as total_highest_yearly_earnings,
    
	ROUND(1.0 * SUM(CASE WHEN continents = 'Africa' THEN total_highest_yearly_earnings ELSE 0 END)/ NULLIF(SUM(total_highest_yearly_earnings),0) *100,2) AS pct_earnings_africa,
	ROUND(1.0 * SUM(CASE WHEN continents = 'Asia' THEN total_highest_yearly_earnings ELSE 0 END)/ NULLIF(SUM(total_highest_yearly_earnings),0) *100,2) AS pct_earnings_asia,
    ROUND(1.0 * SUM(CASE WHEN continents = 'North_America' THEN total_highest_yearly_earnings ELSE 0 END)/ NULLIF(SUM(total_highest_yearly_earnings),0) *100,2) AS pct_earnings_north_america,
    ROUND(1.0 * SUM(CASE WHEN continents = 'Europe' THEN total_highest_yearly_earnings ELSE 0 END)/ NULLIF(SUM(total_highest_yearly_earnings),0) *100,2) AS pct_earnings_europe,
    ROUND(1.0 * SUM(CASE WHEN continents = 'South_America' THEN total_highest_yearly_earnings ELSE 0 END)/ NULLIF(SUM(total_highest_yearly_earnings),0) *100,2) AS pct_earnings_south_america,
    ROUND(1.0 * SUM(CASE WHEN continents = 'Australia_and_Oceania' THEN total_highest_yearly_earnings ELSE 0 END)/ NULLIF(SUM(total_highest_yearly_earnings),0) *100,2) AS pct_earnings_australia_and_oceania

    
FROM Pct_pay
-- Date: 2024-10-07 01:45
*/
INSERT INTO `` (`total_highest_yearly_earnings`,`pct_earnings_africa`,`pct_earnings_asia`,`pct_earnings_north_america`,`pct_earnings_europe`,`pct_earnings_south_america`,`pct_earnings_australia_and_oceania`) VALUES (6570052022,0.09,43.17,35.77,11.01,9.52,0.44);
