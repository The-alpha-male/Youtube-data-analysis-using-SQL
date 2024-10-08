# youtube-data-analysis

## Overview
This project analyzes YouTube statistics globally, focusing on key metrics across continents and countries. The goal is to summarize data regarding uploads, views, earnings, and subscriber counts for various geographic regions, and to determine the percentage of earnings by continent and by country. The data used for this project was sourced from a Kaggle dataset, which can be found [here](https://www.kaggle.com/datasets/nelgiriyewithana/global-youtube-statistics-2023)

## Table of Content
1. [Query Breakdown](#QueryBreakdown)
   * Continental Analysis
   * Percentage of Earnings by Continent
   * Top 8 Countries by Earnings
   * Top 8 Channel Types by Views
2. [Prerequisites](#Prerequisites)
3. [Usage](#Usage)
4. [Visualization](#Visualization) 
## Query Breakdown

### Continental Analysis

This part of the SQL query aggregates YouTube statistics by continent, providing insights into total subscribers, uploads, video views, earnings, and the number of YouTubers.The provided SQL query calculates various metrics:

`continents`: Categorizes countries based on geographical regions.
`total_subs`: Total number of subscribers across all YouTubers in a continent.
`total_uploads`: Total number of videos uploaded by YouTubers in a continent.
`total_views`: Total video views for all YouTubers in a continent.
`yearly_total_earnings`: Total estimated yearly earnings (rounded) for YouTubers in a continent.
`num_of_youtubers`: Total number of YouTubers in a continent.

### Percentage of Earnings by Continent
This section calculates the percentage of total earnings by continent, allowing for an understanding of how each region contributes to global revenue.
1. A Common Table Expression (CTE) named pct_pay is created to calculate the total earnings per continent.
2. The main query then uses this CTE to calculate the percentage of total earnings for each continent.

### Top 8 Countries by Earnings
This query retrieves the top 8 countries based on their YouTube earnings, providing insights into where the highest revenue-generating channels are located.
1. A CTE named `country_pct` is created to calculate the total earnings per country.
2. The main query then uses this CTE to calculate the percentage of total earnings for each of the top 8 countries:
 - United States
 - India
 - Brazil
 - South Korea
 - United Kingdom
 - Pakistan
 - Argentina
 - Russia

### Top 8 Channel Types by Views
This query identifies the top 8 channel types based on video views, providing an understanding of which content categories are the most popular.

## Prerequisites
A SQL client capable of running complex queries. For this project I used MySQL Workbench 8.0 CE

## Usage
1. Connect to your SQL database.
2. Copy and paste the desired query from the breakdown above.
3. Execute the query to view the results.

## Visualization
Power BI was the tool I choose for visualizing the analysis above. Below is the dashboard created
