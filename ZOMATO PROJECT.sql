CREATE DATABASE Zomato;
USE Zomato;
SELECT * FROM zomato_dataset;

/*checked for duplicate values in [RestaurantID] column*/
SELECT RestaurantID, COUNT(RestaurantID)
FROM zomato_dataset
GROUP BY RestaurantID
order by 2 desc;

/*count different country code from zomato_dataset*/
select CountryCode,count(CountryCode)
from zomato_dataset
group by CountryCode
having CountryCode;


/* merged 2 different tables */
CREATE TABLE Country(
Country_Code INT,
country_name VARCHAR(50)NOT NULL
);
 
INSERT INTO Country VALUES (1,"India");
INSERT INTO Country VALUES (162,"Philippines");	
INSERT INTO Country VALUES (30,"Brazil");
INSERT INTO Country VALUES (14,"Australia");
INSERT INTO Country VALUES (184,"Singapore");
INSERT INTO Country VALUES (215,"United kingdom");
INSERT INTO Country VALUES (166,"Qatar");
INSERT INTO Country VALUES (189,"China");
INSERT INTO Country VALUES (191,"Canada");
INSERT INTO Country VALUES (208,"Turkey");
INSERT INTO Country VALUES (214,"United Arab Emirates");
INSERT INTO Country VALUES (148,"New Zeland");
INSERT INTO Country VALUES (216,"USA");
INSERT INTO Country VALUES (37,"Canada");
INSERT INTO Country VALUES (94,"Indonesia");

SELECT * FROM Country;

SELECT t1.*, t2.country_name
FROM zomato_dataset t1
JOIN Country t2
ON  t1.CountryCode = t2.Country_Code;

UPDATE zomato_dataset t1
INNER JOIN Country t2
ON t2.Country_Code = t1.CountryCode
SET Address = country_name
WHERE CountryCode = Country_Code;

ALTER TABLE zomato_dataset
RENAME COLUMN Address to Country;

SELECT * FROM zomato_dataset;


/*REMOVED UNWANTED COLUMNS FROM TABLE*/
ALTER TABLE zomato_dataset DROP LocalityVerbose;
ALTER TABLE zomato_dataset DROP Locality;
ALTER TABLE zomato_dataset DROP Switch_to_order_menu;
ALTER TABLE zomato_dataset DROP Price_range;



/*IDENTIFIED AND CORRECTED THE MIS-SPELLED CITY NAME*/
UPDATE zomato_dataset 
SET CITY = "Istanbul"
WHERE CITY = "?stanbul";

UPDATE zomato_dataset 
SET CITY = "Brasilia"
WHERE CITY = "Bras?lia";

UPDATE zomato_dataset 
SET CITY = "Sao Paulo"
WHERE CITY = "S?o Paulo";


/* COUNTED THE NO. OF RESTAURANTS */
SELECT COUNT(RestaurantName) AS TOTALRESTAURANTS FROM zomato_dataset;  


/* MINI,MAX,AVG FOR VOTES */
SELECT MIN(Votes) AS MINIMUM_VOTES FROM zomato_dataset;

SELECT MAX(Votes) AS MAXIMUM_VOTES FROM zomato_dataset;

SELECT AVG(Votes) AS AVERAGE_VOTES FROM zomato_dataset;


/* MINI,MAX,AVG FOR CURRENCY */
SELECT MIN(Currency) AS MINIMUM_CURRENCY FROM zomato_dataset;

SELECT MAX(Currency) AS MAXIMUM_CURRENCY FROM zomato_dataset;

SELECT AVG(Currency) AS AVERAGE_CURRENCY FROM zomato_dataset;


/* MINI,MAX,AVG FOR RATINGS */
SELECT MIN(Rating) AS MINIMUM_RATINGS FROM zomato_dataset;

SELECT MAX(Rating) AS MAXIMUM_RATINGS FROM zomato_dataset;

SELECT AVG(Rating) AS AVERAGE_RATINGS FROM zomato_dataset;

SELECT Rating FROM Zomato_Dataset  WHERE Rating >= 4;

SELECT * FROM zomato_dataset;


/*TOP RATINGS RESTAURANT*/

SELECT * FROM zomato_dataset LIMIT 5;  





