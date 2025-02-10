CREATE TABLE bike_trips(
	ride_id VARCHAR PRIMARY KEY,
	rideable_type VARCHAR,
	started_at TIMESTAMP,
	ended_at TIMESTAMP,
	start_station_name VARCHAR,
	start_station_id VARCHAR,
	end_station_name VARCHAR,
	end_station_id VARCHAR,
	start_lat DECIMAL,
	start_lng DECIMAL,
	end_lat DECIMAL,
	end_lng DECIMAL,
	member_casual VARCHAR
)

SELECT *
FROM bike_trips
LIMIT 1;

-- deleting null value entries 
DELETE FROM bike_trips 
WHERE ride_id IS NULL OR started_at IS NULL OR ended_at IS NULL

-- droping some unnesesaary columns
ALTER TABLE bike_trips DROP COLUMN start_lat;
ALTER TABLE bike_trips DROP COLUMN end_lat;
ALTER TABLE bike_trips DROP COLUMN start_lng;
ALTER TABLE bike_trips DROP COLUMN end_lng;
-- Removing duplicate entries 
DELETE FROM bike_trips
WHERE ride_id IN(  -- nested query for considerable ride_id
	SELECT ride_id FROM( -- nested for removing duplicates
		SELECT ride_id, COUNT(*) AS cnt
		FROM bike_trips
		GROUP BY ride_id
		HAVING COUNT(*) > 1
	) AS duplicates
);

-- adding a column name ride_length for measuring time duration.
ALTER TABLE bike_trips ADD COLUMN ride_length INTERVAL;

-- setting a value in ride_length column.  
UPDATE bike_trips
SET ride_length = ended_at - started_at;

-- deleting rows where duration of the ride is 0 or less than it.
DELETE FROM bike_trips WHERE ride_length <= INTERVAL '0 seconds';

-- adding day_of_week column.
ALTER TABLE bike_trips ADD COLUMN day_of_week INTEGER;
UPDATE bike_trips
SET day_of_week = EXTRACT(DOW FROM started_at);

-- grouping rides by membership. 
SELECT 
	member_casual, 
	COUNT(*) AS total_rides
FROM 
	bike_trips 
GROUP BY 
	member_casual;

-- Average ride lenght 
SELECT 
	member_casual, 
	AVG(ride_length) AS avg_ride_length
FROM 
	bike_trips
GROUP BY 
	member_casual;

-- converting average time in numerical format. 
SELECT
	member_casual,
	ROUND(AVG(EXTRACT(EPOCH FROM ride_length)/60), 2) AS avg_ride_length_minute
FROM 
	bike_trips
GROUP BY
	member_casual;

-- count day_of_week.
SELECT 
	day_of_week,
	member_casual,
	COUNT(*) AS ride_count
FROM 
	bike_trips
GROUP BY
	day_of_week, member_casual;

-- Counting total rides basis on start station. 
SELECT 
	start_station_name,
	member_casual, 
	COUNT(*) AS ride_count
FROM 
	bike_trips
GROUP BY 
	start_station_name,
	member_casual 
ORDER BY 
	ride_count DESC;
	
DELETE FROM bike_trips
WHERE start_station_name IS NULL;

-- Count riding hours.
SELECT 
	EXTRACT(HOUR FROM started_at) AS ride_hours,
	member_casual,
	COUNT(*) AS ride_count
FROM
	bike_trips 
GROUP BY 
	ride_hours, member_casual
ORDER BY
	ride_hours;