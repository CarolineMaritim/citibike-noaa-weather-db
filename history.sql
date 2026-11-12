/* 2026-11-07 10:55:05 [2 ms] */ 
SELECT * FROM weather LIMIT 5;
/* 2026-11-07 11:39:09 [15 ms] */ 
CREATE TABLE station(
    id INT PRIMARY KEY,
    name VARCHAR(100),
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6)
);
/* 2026-11-07 11:39:21 [12 ms] */ 
CREATE TABLE bike(
    id INT PRIMARY KEY
);
/* 2026-11-07 11:39:27 [19 ms] */ 
CREATE TABLE trip(
    id INT PRIMARY KEY,
    start_date DATE,
    start_time TIMESTAMP,
    end_date DATE,
    end_time TIMESTAMP,
    start_station_id INT REFERENCES station(id),
    end_station_id INT REFERENCES station(id),
    bike_id INT REFERENCES bike(id)
);
/* 2026-11-07 11:51:00 [11 ms] */ 
ALTER TABLE trip ADD COLUMN duration INT;
/* 2026-11-07 13:11:07 [76 ms] */ 
SELECT DISTINCT bike_id FROM bike LIMIT 100;
/* 2026-11-07 13:12:32 [54 ms] */ 
SELECT COUNT(*) FROM bike LIMIT 100;
/* 2026-11-07 13:42:45 [3 ms] */ 
SELECT * FROM weather LIMIT 5;
/* 2026-11-07 13:42:57 [5 ms] */ 
SELECT * FROM bike LIMIT 5;
/* 2026-11-07 13:43:00 [20 ms] */ 
SELECT * FROM person LIMIT 5;
/* 2026-11-07 13:45:02 [3 ms] */ 
SELECT * FROM station_end LIMIT 5;
/* 2026-11-07 13:50:14 [2 ms] */ 
SELECT * FROM station_start LIMIT 5;
/* 2026-11-07 13:50:18 [2 ms] */ 
SELECT * FROM trip LIMIT 5;
/* 2026-11-07 13:50:23 [2 ms] */ 
SELECT * FROM weather LIMIT 5;
/* 2026-11-07 14:12:00 [441 ms] */ 
SELECT DISTINCT start_station_id FROM station_start LIMIT 100;
/* 2026-11-07 14:14:07 [125 ms] */ 
SELECT DISTINCT end_station_id FROM station_end LIMIT 100;
/* 2026-11-08 07:03:02 [11 ms] */ 
SELECT * FROM station LIMIT 100;
/* 2026-11-08 12:24:38 [95 ms] */ 
SELECT * FROM weather LIMIT 5;
/* 2026-11-08 12:24:44 [8 ms] */ 
SELECT * FROM bike LIMIT 5;
/* 2026-11-08 12:25:00 [4 ms] */ 
SELECT * FROM person LIMIT 5;
/* 2026-11-08 12:25:08 [21 ms] */ 
SELECT * FROM station_end LIMIT 5;
/* 2026-11-08 12:27:18 [3 ms] */ 
SELECT * FROM station LIMIT 5;
/* 2026-11-08 12:27:33 [2 ms] */ 
SELECT * FROM weather LIMIT 5;
/* 2026-11-08 12:27:52 [4 ms] */ 
SELECT * FROM person LIMIT 5;
/* 2026-11-08 12:28:00 [3 ms] */ 
SELECT * FROM bike LIMIT 5;
/* 2026-11-08 12:31:02 [4 ms] */ 
-- SELECT * FROM person LIMIT 5;
/* 2026-11-08 12:31:12 [3 ms] */ 
SELECT * FROM person LIMIT 5;
/* 2026-11-08 12:36:10 [10 ms] */ 
ALTER TABLE bike 
RENAME COLUMN bike_id TO id;
/* 2026-11-08 12:36:25 [4 ms] */ 
SELECT * FROM bike LIMIT 5;
/* 2026-11-08 12:38:54 [3 ms] */ 
SELECT * FROM person LIMIT 5;
/* 2026-11-08 12:53:25 [34 ms] */ 
ALTER TABLE bike
ADD PRIMARY KEY (id);
/* 2026-11-08 12:53:30 [223 ms] */ 
ALTER TABLE person
ADD FOREIGN KEY (bike_id) REFERENCES bike(id);
/* 2026-11-08 12:53:47 [7 ms] */ 
SELECT * FROM bike LIMIT 5;
/* 2026-11-08 12:53:57 [5 ms] */ 
SELECT * FROM person LIMIT 5;
/* 2026-11-08 12:56:33 [3 ms] */ 
-- ADD PRIMARY KEY (id);
/* 2026-11-08 13:52:39 [177 ms] */ 
ALTER TABLE person
ADD FOREIGN KEY (bike_id) REFERENCES bike(id);
/* 2026-11-08 13:53:30 [532 ms] */ 
ALTER TABLE person
ADD PRIMARY KEY (id);
/* 2026-11-09 00:02:44 [9 ms] */ 
ALTER TABLE trip RENAME COLUMN index TO id;
/* 2026-11-09 00:04:34 [11 ms] */ 
ALTER TABLE bike 
RENAME COLUMN bike_id TO id;
/* 2026-11-09 00:04:42 [16 ms] */ 
ALTER TABLE bike
ADD PRIMARY KEY (id);
/* 2026-11-09 00:06:16 [3 ms] */ 
ALTER TABLE person
RENAME COLUMN index TO id;
/* 2026-11-09 00:08:04 [9 ms] */ 
ALTER TABLE station 
RENAME COLUMN  index TO id;
/* 2026-11-09 00:08:44 [454 ms] */ 
ALTER TABLE person
ADD PRIMARY KEY (id);
/* 2026-11-09 00:08:49 [12 ms] */ 
ALTER TABLE station
ADD PRIMARY KEY (station_id);
/* 2026-11-09 00:09:31 [256 ms] */ 
ALTER TABLE trip
ADD PRIMARY KEY (id);
/* 2026-11-09 00:09:59 [14 ms] */ 
ALTER TABLE weather
ADD PRIMARY KEY (date);
/* 2026-11-09 01:05:08 [11 ms] */ 
ALTER TABLE station_end
RENAME station_id TO station_id_end;
/* 2026-11-09 01:05:40 [13 ms] */ 
ALTER TABLE station_start
RENAME station_id TO station_id_start;
/* 2026-11-09 01:06:42 [9 ms] */ 
ALTER TABLE station_end
RENAME station_id_end TO station_end_id;
/* 2026-11-09 01:07:55 [9 ms] */ 
ALTER TABLE station_start
RENAME station_id_start TO start_station_id;
/* 2026-11-09 01:07:59 [9 ms] */ 
ALTER TABLE station_end
RENAME station_end_id TO end_station_id;
/* 2026-11-09 01:24:55 [91 ms] */ 
ALTER TABLE station_end
ADD CONSTRAINT end_station_id FOREIGN KEY (end_station_id) REFERENCES station(station_id);
/* 2026-11-09 01:27:44 [87 ms] */ 
ALTER TABLE station_start
ADD CONSTRAINT start_station_id FOREIGN KEY (start_station_id) REFERENCES station(station_id);
/* 2026-11-09 01:39:40 [14 ms] */ 
ALTER TABLE weather
ADD PRIMARY KEY (date);
/* 2026-11-09 02:01:01 [687 ms] */ 
ALTER TABLE trip
ADD FOREIGN KEY (bike_id) REFERENCES bike(id),
ADD FOREIGN KEY (start_station_id) REFERENCES station(station_id),
ADD FOREIGN KEY (end_station_id) REFERENCES station(station_id),
ADD FOREIGN KEY (start_date) REFERENCES weather(date),
ADD FOREIGN KEY (end_date) REFERENCES weather(date);
/* 2026-11-09 02:16:51 [109 ms] */ 
ALTER TABLE station_start
ADD  FOREIGN KEY (bike_id) REFERENCES bike(id);
/* 2026-11-09 02:17:13 [87 ms] */ 
ALTER TABLE station_end
ADD  FOREIGN KEY (bike_id) REFERENCES bike(id);
/* 2026-11-09 02:17:47 [94 ms] */ 
ALTER TABLE person
ADD  FOREIGN KEY (bike_id) REFERENCES bike(id);
/* 2026-11-10 00:41:40 [12 ms] */ 
SELECT CONSTRAINT_NAME, tABLE_NAME, COLUMN_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'your_table_name' LIMIT 100;
/* 2026-11-10 00:41:56 [5 ms] */ 
SELECT CONSTRAINT_NAME, tABLE_NAME, COLUMN_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'trip' LIMIT 100;
/* 2026-11-10 00:42:57 [321 ms] */ 
ALTER TABLE trip
ADD PRIMARY KEY (index);
/* 2026-11-10 00:43:46 [10 ms] */ 
ALTER TABLE trip
RENAME index TO id;
/* 2026-11-10 09:32:07 [154 ms] */ 
SELECT CONSTRAINT_NAME, tABLE_NAME, COLUMN_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'trip' LIMIT 100;
/* 2026-11-10 10:39:34 [3 ms] */ 
SELECT id as bike_id FROM bike LIMIT 100;
/* 2026-11-10 10:51:40 [4 ms] */ 
WITH trip_data AS(
    SELECT trip.bike_id AS bike_id, 
           trip.id AS trip_id, 
           trip.time_sec AS duration, 
           trip.start_date, 
           trip.end_date, 
           trip.start_station_id, 
           trip.end_station_id
           FROM trip 
)
SELECT * FROM trip_data LIMIT 100;
/* 2026-11-10 10:52:28 [3 ms] */ 
WITH perso_data AS(
    SELECT person.id AS person_id, 
           person.birth_year, 
           person.gender
           FROM person 
)
SELECT * FROM perso_data LIMIT 100;
/* 2026-11-10 11:00:14 [7 ms] */ 
SELECT * 
FROM trip
INNER JOIN weather ON trip.start_date = weather.date
INNER JOIN weather AS weather_end ON trip.end_date = weather_end.date LIMIT 100;
/* 2026-11-10 11:23:38 [1 ms] */ 
SELECT * FROM weather LIMIT 30;
/* 2026-11-10 11:28:19 [2 ms] */ 
SELECT * FROM trip LIMIT 100;
/* 2026-11-10 11:34:13 [64 ms] */ 
SELECT * FROM weather LIMIT 30;
/* 2026-11-10 11:38:50 [4 ms] */ 
WITH start_weather AS(
SELECT trip.id, 
  trip.bike_id,
  trip.start_date,
  trip.start_time1, 
  trip.start_station_name, 
  trip.start_station_id, 
  weather.date, 
  weather.precipitation, 
  weather.snow_fall, 
  weather.snow_depth, 
  weather.avg_temp, 
  weather.max_temp, 
  weather.min_temp
  FROM trip
  JOIN weather ON trip.start_date = weather.date
)
SELECT * FROM start_weather LIMIT 4;
/* 2026-11-10 11:39:46 [2 ms] */ 
WITH start_weather AS(
SELECT trip.id, 
  trip.bike_id,
  trip.start_date,
  trip.start_time1, 
  trip.start_station_name, 
  trip.start_station_id, 
  weather.date, 
  weather.precipitation, 
  weather.snow_fall, 
  weather.snow_depth, 
  weather.avg_temp, 
  weather.max_temp, 
  weather.min_temp
  FROM trip
  JOIN weather ON trip.start_date = weather.date
)
SELECT * FROM start_weather ORDER BY "id" asc LIMIT 4;
/* 2026-11-10 11:40:43 [2 ms] */ 
WITH end_weather AS(
SELECT trip.id, 
  trip.bike_id,
  trip.end_date,
  trip.end_time1, 
  trip.end_station_name, 
  trip.end_station_id, 
  weather.date, 
  weather.precipitation, 
  weather.snow_fall, 
  weather.snow_depth, 
  weather.avg_temp, 
  weather.max_temp, 
  weather.min_temp
  FROM trip
  JOIN weather ON trip.end_date = weather.date
)
SELECT * FROM end_weather ORDER BY "id" asc LIMIT 4;
/* 2026-11-10 11:42:19 [1026 ms] */ 
CREATE TABLE end_weather AS
SELECT trip.id, 
  trip.bike_id,
  trip.end_date,
  trip.end_time1, 
  trip.end_station_name, 
  trip.end_station_id, 
  weather.date, 
  weather.precipitation, 
  weather.snow_fall, 
  weather.snow_depth, 
  weather.avg_temp, 
  weather.max_temp, 
  weather.min_temp
  FROM trip
  JOIN weather ON trip.end_date = weather.date;
/* 2026-11-10 11:42:27 [940 ms] */ 
CREATE TABLE start_weather AS
SELECT trip.id, 
  trip.bike_id,
  trip.start_date,
  trip.start_time1, 
  trip.start_station_name, 
  trip.start_station_id, 
  weather.date, 
  weather.precipitation, 
  weather.snow_fall, 
  weather.snow_depth, 
  weather.avg_temp, 
  weather.max_temp, 
  weather.min_temp
  FROM trip
  JOIN weather ON trip.start_date = weather.date;
/* 2026-11-10 12:36:18 [21 ms] */ 
CREATE VIEW vw_adverse_weather_impact AS
SELECT 
    t.start_station_name,
    COUNT(CASE WHEN w.snow_fall > 0 THEN t.id END) AS trips_during_snow,
    COUNT(CASE WHEN w.precipitation > 0.3 THEN t.id END) AS trips_during_heavy_rain,
    COUNT(CASE WHEN w.max_temp < 32 THEN t.id END) AS trips_during_freezing,
    COUNT(t.id) AS grand_total_trips
FROM trip t
JOIN weather w ON t.start_date = w.date
GROUP BY t.start_station_name;
/* 2026-11-10 12:38:50 [5 ms] */ 
CREATE VIEW vw_daily_weather_ridership_correlator AS
SELECT 
    w.date AS weather_date,
    w.max_temp,
    w.min_temp,
    w.avg_temp,
    w.precipitation,
    w.snow_fall,
    COUNT(t.id) AS total_trips,
    COUNT(DISTINCT t.bike_id) AS unique_bikes_active
FROM weather w
LEFT JOIN trip t ON w.date = t.start_date
GROUP BY 
    w.date, 
    w.max_temp, 
    w.min_temp, 
    w.avg_temp, 
    w.precipitation, 
    w.snow_fall;
