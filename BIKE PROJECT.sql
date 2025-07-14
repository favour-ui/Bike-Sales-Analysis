SELECT *
FROM bike_project;

CREATE TABLE bike_project1
LIKE bike_project;

INSERT bike_project1
SELECT *
FROM bike_project;

SELECT *
FROM bike_project1;

SELECT COUNT(*) AS DUPLICATE_COUNT
FROM bike_project1
GROUP BY ID,`Marital Status`,Gender,Income,Children,Education,
Occupation,`Home Owner`,Cars,`Commute Distance`,Region,Age,
`Age Group`,`Purchased Bike`
HAVING COUNT(*)>1;

SELECT distinct Purchased Bike
FROM bike_project1;

-- EXPOSITORY DATA ANALYSIS

-- What is the distribution of customers by gender

SELECT Gender,
COUNT(*) AS Total_Customer
FROM bike_project1
GROUP BY  Gender
ORDER BY Total_Customer;

-- What is the  percentage distribution of customers by gender

SELECT Gender,
ROUND(COUNT(*) * 100 / (SELECT COUNT(*) FROM bike_project1), 2) AS CUSTOMER_PERCENT
FROM bike_project1
GROUP BY  Gender
ORDER BY CUSTOMER_PERCENT;

-- What is the distribution of customers by Age Group

SELECT `Age Group`,
COUNT(*) AS Total_Customer
FROM bike_project1
GROUP BY `Age Group`
ORDER BY Total_Customer;

SELECT `Age Group`,
ROUND(COUNT(*) * 100/(SELECT COUNT(*) FROM bike_project1), 2) AS CUSTOMER_PERCENT
FROM bike_project1
GROUP BY `Age Group`
ORDER BY CUSTOMER_PERCENT;

SELECT COUNT(*)
FROM bike_project1;

-- What is the distribution of customers by Marital status

SELECT `Marital Status`,
COUNT(*) AS Total_Customer
FROM bike_project1
GROUP BY `Marital Status`
ORDER BY Total_Customer;

-- What is the PERCENTAGE distribution of customers by Marital status

SELECT `Marital Status`,
ROUND(COUNT(*) * 100 / (SELECT COUNT(*) FROM bike_project1), 2) AS CUSTOMER_PERCENT
FROM bike_project1
GROUP BY `Marital Status`
ORDER BY CUSTOMER_PERCENT;

-- What is the distribution of customers by Number of children

SELECT Children,
COUNT(*) AS Total_Customer
FROM bike_project1
GROUP BY Children
ORDER BY Total_Customer;

-- Bike Purchase by Demographics
SELECT `Purchased Bike`,
COUNT(*) AS Total_Sales,
ROUND(COUNT(*) * 100 / (SELECT COUNT(*) FROM bike_project1), 2) AS PERCENTAGE
FROM bike_project1
GROUP BY `Purchased Bike`
ORDER BY Total_Sales;

-- What percentage of each gender purchased a bike?
SELECT Gender,`Purchased Bike`,
COUNT(*) AS Total_Sales,
 ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY Gender), 2) AS Percentage
FROM bike_project1
GROUP BY Gender,`Purchased Bike`
ORDER BY Total_Sales;

-- What PERCENTAGE OF age group is most likely to purchase a bike?

SELECT `Age Group`,
COUNT(*) AS Total_Customers,
SUM(CASE WHEN `Purchased Bike` = 'Yes' THEN 1 ELSE 0 END) AS Bikes_Purchased,
ROUND(SUM(CASE WHEN `Purchased Bike` = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Purchase_Percentage
FROM bike_project1
GROUP BY `Age Group`
ORDER BY Purchase_Percentage DESC;

-- What age group is most likely to purchase a bike?

SELECT `Age Group`,
COUNT(*) AS Total_Customers,
SUM(CASE WHEN `Purchased Bike` = 'Yes' THEN 1 ELSE 0 END) AS Bikes_Purchased
FROM bike_project1
GROUP BY `Age Group`
ORDER BY Bikes_Purchased DESC;

-- Is marital status a significant factor in bike purchases?

SELECT `Marital Status`,
COUNT(*) AS Total_Customers,
SUM(CASE WHEN `Purchased Bike` = 'Yes' THEN 1 ELSE 0 END) AS Bikes_Purchased
FROM bike_project1
GROUP BY `Marital Status`
ORDER BY Bikes_Purchased DESC;

-- How does the number of children relate to bike purchase behavior?

SELECT Children,
COUNT(*) AS Total_Customers,
SUM(CASE WHEN `Purchased Bike` = 'Yes' THEN 1 ELSE 0 END) AS Bikes_Purchased
FROM bike_project1
GROUP BY Children
ORDER BY Bikes_Purchased DESC;

-- Which education level has the highest conversion rate?

SELECT Education,
SUM(CASE WHEN `Purchased Bike`= 'YES' THEN 1 ELSE 0 END) AS Bikes_Purchased
FROM bike_project1
GROUP BY Education
ORDER BY Bikes_Purchased DESC;

-- Which  percentage education level has the highest conversion rate?

SELECT Education,
SUM(CASE WHEN `Purchased Bike`= 'YES' THEN 1 ELSE 0 END) AS Bikes_Purchased,
ROUND(SUM(CASE WHEN `Purchased Bike` = 'Yes' THEN 1 ELSE 0 END) * 100 / COUNT(*), 2) AS Purchase_Percentage
FROM bike_project1
GROUP BY Education
ORDER BY Bikes_Purchased DESC;

-- Which occupations are more likely to purchase bikes?

SELECT Occupation,
COUNT(*) AS Total_Customers,
SUM(CASE WHEN `Purchased Bike`= 'YES' THEN 1 ELSE 0 END) AS Bikes_Purchased,
ROUND(SUM(CASE WHEN `Purchased Bike`= 'YES' THEN 1 ELSE 0 END)* 100 / COUNT(*), 2) AS Purchase_Percentage
FROM bike_project1
GROUP BY Occupation
ORDER BY Purchase_Percentage DESC;

-- Does commute distance affect the likelihood of purchasing a bike?
SELECT `Commute Distance`,
COUNT(*) AS Total_Customers,
SUM(CASE WHEN `Purchased Bike`= 'YES' THEN 1 ELSE 0 END) AS Bikes_Purchased,
ROUND(SUM(CASE WHEN `Purchased Bike`= 'YES' THEN 1 ELSE 0 END)* 100 / COUNT(*), 2) AS Purchase_Percentage
FROM bike_project1
GROUP BY `Commute Distance`
ORDER BY Purchase_Percentage DESC;

-- Do homeowners buy bikes more than renters?
SELECT `Home Owner`,
COUNT(*) AS Total_Customers,
SUM(CASE WHEN `Purchased Bike`= 'YES' THEN 1 ELSE 0 END) AS Bikes_Purchased,
ROUND(SUM(CASE WHEN `Purchased Bike`= 'YES' THEN 1 ELSE 0 END)* 100 / COUNT(*), 2) AS Purchase_Percentage
FROM bike_project1
GROUP BY `Home Owner`
ORDER BY Purchase_Percentage DESC;

-- Is there a correlation between number of cars owned and bike purchases?
SELECT Cars,
COUNT(*) AS Total_Customers,
SUM(CASE WHEN `Purchased Bike` = 'Yes' THEN 1 ELSE 0 END) AS Bikes_Purchased,
ROUND(SUM(CASE WHEN `Purchased Bike` = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Purchase_Percentage
FROM bike_project1
GROUP BY Cars
ORDER BY Cars;

-- Sales Performance

-- What percentage of customers purchased a bike (conversion rate)?
SELECT `Purchased Bike`,
COUNT(*) AS Total_Sales,
ROUND(COUNT(*) * 100 / (SELECT COUNT(*) FROM bike_project1), 2) AS PERCENTAGE_PURCHASE
FROM bike_project1
GROUP BY `Purchased Bike`
ORDER BY `Purchased Bike` DESC;

-- Which region has the highest bike sales?
SELECT Region,
SUM(CASE WHEN `Purchased Bike` = 'YES' THEN 1 ELSE 0 END) AS Bikes_Purchased
FROM bike_project1
GROUP BY Region
ORDER BY Bikes_Purchased DESC;

-- Which region has the lowest conversion rate?
SELECT Region,
COUNT(*) AS Total_Sales,
SUM(CASE WHEN `Purchased Bike` = 'YES' THEN 1 ELSE 0 END) AS Bikes_Purchased,
ROUND(SUM(CASE WHEN `Purchased Bike` = 'YES' THEN 1 ELSE 0 END) * 100/COUNT(*), 2) AS PERCENTAGE_PURCHASE
FROM bike_project1
GROUP BY Region
ORDER BY PERCENTAGE_PURCHASE ASC;

-- How does income affect the likelihood of purchasing a bike?
SELECT distinct INCOME
FROM bike_project1
ORDER BY INCOME ASC;

SELECT 
    CASE 
       WHEN INCOME < 30000 THEN 'LOW INCOME(<30k)'
       WHEN INCOME BETWEEN 30000 AND 59999 THEN 'Mid Income (30k–60k)'
       WHEN INCOME BETWEEN 60000 AND 89999 THEN 'Upper Mid (60k–90k)'
	   ELSE 'High Income (90k+)'
    END INCOME_GROUP,
COUNT(*) AS Total_Customers,
SUM(CASE WHEN `Purchased Bike` = 'YES' THEN 1 ELSE 0 END) AS Bikes_Purchased,
ROUND(SUM(CASE WHEN `Purchased Bike` = 'YES' THEN 1 ELSE 0 END) * 100 / COUNT(*), 2) AS Purchase_Percentage
FROM bike_project1
GROUP BY INCOME_GROUP
ORDER BY Purchase_Percentage;


