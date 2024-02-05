The aim of this project is to analyze the Zomato dataset in order to understand the key aspects of Zomato's business. 
The dataset contains more than 9000 rows with various columns such as Restaurant_id, Restaurant_name, City, 
Location, Cuisines, and more. Through SQL analysis, we will perform several 
tasks to gain insights into the dataset.

1. Checked all the details of the table:
 Verified column names, data types, and constraints to ensure data accuracy and consistency.
2. Checked for duplicate values in the RestaurantId column:
Identified and removed any duplicate entries in the RestaurantId column 
to maintain data integrity.
3. Removed unwanted columns:
Eliminated irrelevant columns from the dataset to focus on the most 
important attributes.
4. Merged two different tables and added the Country_Name column:
Combined two tables using the primary key (CountryCode) and added a new column (Country_Name) to provide additional information.
5. Identified and corrected misspelled city names: Scrutinized the City column for misspelled entries and rectified them to 
maintain data accuracy.
6. Counted the number of restaurants using count:
Utilized window functions to calculate the count of restaurants, 
considering the sequential ordering of data.
7. Checked min, max, and average data for votes, rating, and currency columns:
Examined the statistical measures (minimum, maximum, and average) 
for votes, rating, and currency columns to understand the range and 
distribution of values.

Conclusion: 
During the analysis of the Zomato dataset, several observations were made:
 The dataset consists of various details related to restaurants such as names, 
locations, cuisines, and ratings.
Duplicate entries in the RestaurantId column were identified and removed to 
ensure clean data.
Unwanted columns were eliminated to focus only on relevant attributes.
The dataset was enriched by merging two tables and including the 
Country_Name column.
Misspelled city names were corrected to maintain data accuracy.
The count of restaurants was calculated using functions.
Statistical measures such as minimum, maximum, and average were 
calculated for votes, rating, and currency columns.
A new category column was created to group restaurants based on their 
ratings.

Overall, this analysis provides valuable insights into Zomato's business, allowing for a better understanding of their operations and market presence.
