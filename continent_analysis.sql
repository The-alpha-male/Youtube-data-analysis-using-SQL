/*
-- Query: SELECT
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
         "Papua New Guinea","Samoa","Solomon Islands","Tonga","Tuvalu","Vanuatu") THEN 'Australia_and_Oceania '
	END AS continents,


	/*aggregate the tables*/
	SUM(subscribers) AS total_subscribers,
    SUM(uploads) AS total_uploads,
    SUM(`video views`) AS total_video_views,
    ROUND(SUM(highest_yearly_earnings),0) AS total_highest_yearly_earnings,
	COUNT(Youtuber) AS num_of_youtubers
    
FROM global_youtube_statistics
GROUP BY continents
ORDER BY total_highest_yearly_earnings DESC
LIMIT 0, 1000

-- Date: 2024-10-06 02:03
*/
INSERT INTO `` (`continents`,`total_subscribers`,`total_uploads`,`total_video_views`,`total_highest_yearly_earnings`,`num_of_youtubers`) VALUES (Asia,6816400000,7012319,3535676377274,2836529501,280);
INSERT INTO `` (`continents`,`total_subscribers`,`total_uploads`,`total_video_views`,`total_highest_yearly_earnings`,`num_of_youtubers`) VALUES (North_America,8193200000,1380387,4025663346193,2350291775,351);
INSERT INTO `` (`continents`,`total_subscribers`,`total_uploads`,`total_video_views`,`total_highest_yearly_earnings`,`num_of_youtubers`) VALUES (Europe,2286600000,463867,1116905725743,723242645,113);
INSERT INTO `` (`continents`,`total_subscribers`,`total_uploads`,`total_video_views`,`total_highest_yearly_earnings`,`num_of_youtubers`) VALUES (South_America,1948400000,205357,870922272521,625342875,91);
INSERT INTO `` (`continents`,`total_subscribers`,`total_uploads`,`total_video_views`,`total_highest_yearly_earnings`,`num_of_youtubers`) VALUES (Australia_and_Oceania ,167500000,7191,72027285865,29045226,9);
INSERT INTO `` (`continents`,`total_subscribers`,`total_uploads`,`total_video_views`,`total_highest_yearly_earnings`,`num_of_youtubers`) VALUES (Africa,45100000,6112,14140226988,5600000,3);
