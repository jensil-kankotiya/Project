# Project
My first project for data analysis using analysis tools.  


# SQL
- Create a table name "ride_trips".
- upload the last 6 months of data in table.
  
    ## Data Cleaning
    - Delete null values if it's in any row using delete clause.
    - Droped some unnesessary columns by ALTERING TABLE.
    - Removed duplicate entries from the dataset.
    - Adding a ride length (ended_at - started_at) column to analyse duration of the ride.
    - Delete rows where ride length is 0 or by mistake if it's negative (<=).
    - Adding a day of week column by extracting day of week from the starting date.

    ## Data Processing 
    - Grouping data by membership counting total number of riders.
    - Counting the Average ride length by AVG(). 
    - Converting Average number of ride length by extracting "EPOCH FROM ride_length" and divide it by 60 to get the minute in numberic type.
    - Counting riders as per usage on day_of_week( 0, 1, 2, 3, 4, 5, 6, 0 = "Sunday")
    - Counting riding hours by extracting hour form started at.
 
    ## Data Visualization
    - Pie chart to differentiate casual and membership user.
    - Clustered bar chart to visualize avg. minutes of ride.
    - Clustered column chart for counting the weekly usage of the rental cycles.
    - Line chart for clarifing most usage time period.
 


# **Conclustion**
  - After seeing Ride on The Day of Week column graph, members are mostly actives during working days and in contrast usual users are highly actives during weekends and to clarify my point let's have a look on line chart where we can see the service is highly active on period of moring 9 and afternoon 5 which shows that professionals are using it the most.

  - We can focus on who is causal user and doing professional work.
  - We focus on market segment where we find bigger proportion of professionals.
  - We can plan for second membership plan for saturday or sunday users who can use the service for enjoyment.


 
 
 
 # Data Source:
 - https://divvy-tripdata.s3.amazonaws.com/index.html
      
 
 
