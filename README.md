# Bike-Sales-Analysis
## Table of contents

### Project Overview

This project showcases an end-to-end exploratory data analysis and dashboard development on bike sales data. The objective was to identify customer behavior trends and key factors influencing bike purchases to drive better business decisions. The analysis was conducted using Excel, MySQL, and Power BI.

### 📊 Business Problem

A bicycle company wanted to understand:

What demographic and socioeconomic groups are more likely to purchase bikes?

How do factors like income, marital status, education, and commute distance affect bike sales?

What regions and customer segments generate the most revenue?

By uncovering trends and customer insights, the company aimed to optimize marketing strategies, increase sales, and enhance customer targeting.
### 🎯 Aim of the Project
The aim of this project is to analyze customer demographic data and purchase behavior to uncover insights that drive strategic decision-making in bike sales. This includes:

- Identifying key factors that influence bike purchases (e.g., age, income, gender, marital status)

- Segmenting customers based on socioeconomic attributes

- Building an interactive dashboard that enables stakeholders to explore patterns, trends, and performance indicators in real time

- Providing actionable recommendations to enhance marketing effectiveness and boost revenue


### 📥 Data Sources

 **Sales data:** The primary data set used for this analysis is the "Bike_sales.csv"file,containg detailed information about each Bike sales made by the company

### 🛠 Tools Used

- Excel – Data cleaning and initial exploration

- MySQL – Data extraction and transformation  

- Power BI – Visualization and dashboard creation
### 🔄 Process Workflow
This project followed a structured data analysis lifecycle:

1. Data Collection
Imported raw data from an Excel spreadsheet containing customer demographics, income levels, education, marital status, and bike purchase history.

2. Data Cleaning & Preprocessing
 Handled missing or inconsistent entries using Excel

 Renamed columns for clarity and consistency

 Coded categorical variables where needed

3. Data Transformation (SQL)
 Connected dataset to MySQL Workbench

 Wrote queries to group, aggregate, and filter data:

 Grouped by gender, age group, income levels, etc.

 Calculated total sales and purchase conversion percentages

4. Data Visualization (Power BI)
 Imported the cleaned data into Power BI

 Created:

- KPI cards for total revenue and customers

- Donut charts for gender and marital status

- Bar charts for age group and education impact

- Gauge chart to track total bikes purchased

- Added interactive filters for children count, commute distance, region, and house ownership

### 🔍 Key Insights

- **Total Revenue:** $56M generated from 1000 customers

- **Bikes Purchased:** 481 bikes purchased out of 962 customers (~50% conversion rate)

- **Income Level:** Higher income groups showed stronger purchase behavior

- **High Income Purchase Rate:** 52.78%

- **Upper-Mid Income:** 47.89%

- **Age Group:** Middle-aged customers are the highest in both population and purchases

- **Gender Trend:**

**Female purchase rate:** 52.64%

**Male purchase rate:** 47.36%

- **Marital Status:**

**Married:** 250 bikes purchased

**Single:** 231 bikes purchased

- **Education:**

Bachelors and Partial College customers led in purchase volume

<img width="601" height="335" alt="bike sales analysis" src="https://github.com/user-attachments/assets/b3f133bb-8ba0-493d-8a49-202f38fb14cc" />

### 📈 Dashboard Features
Interactive filters for region, children, commute distance, occupation, and home ownership

- Dynamic visuals including:

Donut charts for gender and marital status

Bar charts for age group and education breakdown

KPI cards for total income, average income, and bike purchase rate

Gauge for visualizing total bikes purchased

### 📊 Results / Findings
- Customers with higher income and middle age are more likely to purchase bikes.

- Female and married customers demonstrate a slightly higher conversion rate.

- Bachelor’s degree holders and partial college attendees dominate the buyer base.

- Commute distance and children count have potential influence on purchasing decisions but need deeper segmentation.

### 💡 Recommendations
1. Targeted Marketing: Focus on middle-aged, high-income, married women with a Bachelor's degree in upcoming campaigns.

2. Bundle Offers: Create promotions for families with children and longer commute distances.

3. Customer Segmentation: Leverage filters for hyper-targeted outreach by region and occupation.

4. Email Campaigns: Personalized emails to the most likely buyers based on the profile patterns discovered.

5. Expand Regional Strategy: Invest more in the regions with higher engagement and bike purchase rate.

