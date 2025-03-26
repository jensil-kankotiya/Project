# Black Friday Sales Consumer Behavior Analysis
*Generated on: 2025-03-26 05:40:05 UTC*
*Author: jensil-kankotiya*

## Executive Summary
This document presents an analysis of consumer behavior during Black Friday sales, examining purchasing patterns and customer demographics through data analysis.

## Table of Contents
1. [Setup and Dependencies](#setup-and-dependencies)
2. [Dataset Description](#dataset-description)
3. [Data Cleaning Process](#data-cleaning-process)
4. [Analysis Methodology](#analysis-methodology)
5. [Key Findings](#key-findings)
6. [Recommendations](#recommendations)

## Setup and Dependencies
The analysis utilizes the following Python libraries:
- pandas: Data manipulation and analysis
- numpy: Numerical computations
- matplotlib: Basic plotting
- plotly.express: Interactive visualizations
- seaborn: Statistical data visualization

## Dataset Description
The dataset contains 550,068 records with 12 columns:

| Column Name | Description | Data Type |
|------------|-------------|-----------|
| User_ID | Unique identifier for each user | int64 |
| Product_ID | Unique identifier for each product | object |
| Gender | Customer gender (M/F) | object |
| Age | Age category of customer | object |
| Occupation | Occupation code (0-20) | int64 |
| City_Category | City category (A/B/C) | object |
| Stay_In_Current_City_Years | Years in current city | object |
| Marital_Status | Marital status (0/1) | int64 |
| Product_Category_1 | Primary product category | int64 |
| Product_Category_2 | Secondary product category | float64 |
| Product_Category_3 | Tertiary product category | float64 |
| Purchase | Purchase amount | int64 |

## Data Cleaning Process
1. Initial Data Assessment
   - Identified missing values in Product_Category_2 (173,638 nulls)
   - Identified missing values in Product_Category_3 (383,247 nulls)

2. Missing Value Treatment
   - Filled missing values in Product_Category_2 with median value
   - Filled missing values in Product_Category_3 with median value
   - Verified no remaining null values in the dataset

## Analysis Methodology
The analysis follows a structured approach:
1. Exploratory Data Analysis (EDA)
2. Demographic Analysis
3. Purchase Pattern Analysis
4. Product Category Analysis

## Key Findings
1. Purchase Patterns:
   - Purchase amounts range: $12 - $23,961
   - Median purchase amount: $8,047
   - Most active purchasing age group: 18-45 years

2. Demographics:
   - Age Categories: 7 distinct groups (0-17, 18-25, 26-35, 36-45, 46-50, 51-55, 55+)
   - Occupation Types: 21 different categories (0-20)

3. Data Quality:
   - Complete data for primary variables
   - Secondary and tertiary product categories required median imputation

## Recommendations
1. Further Analysis Needed:
   - Purchase distribution analysis
   - Age-group specific patterns
   - Gender-based purchase behavior
   - City category impact on sales

2. Suggested Improvements:
   - Add correlation analysis
   - Implement purchase prediction models
   - Develop customer segmentation

---
*Document End*
