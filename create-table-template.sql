SELECT * FROM bike LIMIT 5;
SELECT * FROM person LIMIT 5;
-- SELECT * FROM station LIMIT 5;
-- SELECT * FROM trip LIMIT 5;
-- SELECT * FROM weather LIMIT 5;

ALTER TABLE bike 
RENAME COLUMN bike_id TO id;

ALTER TABLE bike
ADD PRIMARY KEY (id);

ALTER TABLE person
RENAME COLUMN index TO id; 

ALTER TABLE station 
RENAME COLUMN  index TO id;
ALTER TABLE person
ADD PRIMARY KEY (id);

ALTER TABLE station
ADD PRIMARY KEY (station_id);

ALTER TABLE station_start
ADD  FOREIGN KEY (bike_id) REFERENCES bike(id);

ALTER TABLE person
ADD  FOREIGN KEY (bike_id) REFERENCES bike(id);

ALTER TABLE station_end
ADD  FOREIGN KEY (bike_id) REFERENCES bike(id);

ALTER TABLE station_end
RENAME station_end_id TO end_station_id;

ALTER TABLE station_end
ADD CONSTRAINT end_station_id FOREIGN KEY (end_station_id) REFERENCES station(station_id);


ALTER TABLE station_start
ADD CONSTRAINT start_station_id FOREIGN KEY (start_station_id) REFERENCES station(station_id);
ALTER TABLE station_start
RENAME station_id_start TO start_station_id;

ALTER TABLE trip
ADD FOREIGN KEY (bike_id) REFERENCES bike(id),
ADD FOREIGN KEY (start_station_id) REFERENCES station(station_id),
ADD FOREIGN KEY (end_station_id) REFERENCES station(station_id),
ADD FOREIGN KEY (start_date) REFERENCES weather(date),
ADD FOREIGN KEY (end_date) REFERENCES weather(date);

ALTER TABLE weather
ADD PRIMARY KEY (date);

ALTER TABLE trip
ADD PRIMARY KEY (index);

ALTER TABLE trip
RENAME index TO id;
SELECT CONSTRAINT_NAME, tABLE_NAME, COLUMN_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'trip';


--Combine tables into one table
WITH bike_data AS (
    SELECT id as bike_id 
    FROM bike
);