---This view identifies operations under extreme conditions 
--(freezing, torrential rain, heavy snow)

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

--This view regards environmental changes alongside total volume and duration.
CREATE VIEW vw_daily_weather_ridership AS
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
