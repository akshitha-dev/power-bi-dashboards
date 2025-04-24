select * from weather_forecast;

select distinct(time) from weather_forecast;
select time_epoch from weather_forecast 
where time_epoch is null;

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'weather_forecast';

alter table  weather_forecast
alter column time TYPE TIMESTAMPTZ
USING time::timestamp AT TIME ZONE 'America/Chicago';

alter table  weather_forecast
alter column forecast_date TYPE TIMESTAMPTZ
USING forecast_date::timestamp AT TIME ZONE 'America/Chicago';


alter table  weather_forecast
alter column "localtime" TYPE TIMESTAMPTZ
USING "localtime" AT TIME ZONE 'America/Chicago';


SELECT * FROM weather_forecast WHERE pressure_in IS NULL OR time IS NULL OR temp_c
IS NULL OR temp_f IS NULL OR is_day IS NULL OR wind_mph IS NULL OR wind_kph IS null
OR wind_degree IS NULL OR uv IS NULL OR forecast_date IS NULL OR condition_code IS null;

