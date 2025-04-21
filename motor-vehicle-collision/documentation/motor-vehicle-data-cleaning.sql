
   CREATE TABLE motors (
   CRASH_DATE DATE,
    CRASH_TIME TIME,
    BOROUGH VARCHAR(64),
    ZIP_CODE varchar(64),	
    LATITUDE FLOAT,
    LONGITUDE FLOAT,
    LOCATION VARCHAR(128),
    ON_STREET_NAME VARCHAR(64),
    CROSS_STREET_NAME VARCHAR(64),
    OFF_STREET_NAME VARCHAR(64),
    NUMBER_OF_PERSONS_INJURED INT,	
    NUMBER_OF_PERSONS_KILLED INT,
    NUMBER_OF_PEDESTRIANS_INJURED INT,	
    NUMBER_OF_PEDESTRIANS_KILLED INT,
    NUMBER_OF_CYCLIST_INJURED INT,
    NUMBER_OF_CYCLIST_KILLED INT,
    NUMBER_OF_MOTORIST_INJURED INT,
    NUMBER_OF_MOTORIST_KILLED INT,
    CONTRIBUTING_FACTOR_VEHICLE_1 VARCHAR(64),	
    CONTRIBUTING_FACTOR_VEHICLE_2 VARCHAR(64),	
    CONTRIBUTING_FACTOR_VEHICLE_3 VARCHAR(64),
    CONTRIBUTING_FACTOR_VEHICLE_4 VARCHAR(64),	
    CONTRIBUTING_FACTOR_VEHICLE_5 VARCHAR(64),
    COLLISION_ID INT,
    VEHICLE_TYPE_CODE_1 VARCHAR(64),
    VEHICLE_TYPE_CODE_2 VARCHAR(64),
    VEHICLE_TYPE_CODE_3 VARCHAR(64),
    VEHICLE_TYPE_CODE_4 VARCHAR(64),
    VEHICLE_TYPE_CODE_5 VARCHAR(64)
);


select*from motors;


select crash_date,crash_time from motors
where crash_date is null or crash_time is null;

select distinct contributing_factor_vehicle_1 from motors;
update motors
set contributing_factor_vehicle_1 = 'unspecified'
where contributing_factor_vehicle_1 is null;

select distinct contributing_factor_vehicle_2 from motors;
update motors
set contributing_factor_vehicle_2 = 'unspecified'
where contributing_factor_vehicle_2 is null;

select distinct contributing_factor_vehicle_3 from motors;
update motors
set contributing_factor_vehicle_3 = 'unspecified'
where contributing_factor_vehicle_3 is null;

select distinct contributing_factor_vehicle_4 from motors;
update motors
set contributing_factor_vehicle_4 = 'unspecified'
where contributing_factor_vehicle_4 is null;

select distinct contributing_factor_vehicle_5 from motors;
update motors
set contributing_factor_vehicle_5 = 'unspecified'
where contributing_factor_vehicle_5 is null;


select distinct collision_id  from motors
where collision_id is null;


select distinct vehicle_type_code_1 ,vehicle_type_code_2 ,vehicle_type_code_3,vehicle_type_code_4,vehicle_type_code_5  from motors;

DELETE FROM motors
WHERE vehicle_type_code_1 = 'unspecified'
   OR vehicle_type_code_2 = 'unspecified'
   OR vehicle_type_code_3 = 'unspecified'
   OR vehicle_type_code_4 = 'unspecified'
   OR vehicle_type_code_5 = 'unspecified';


select distinct number_of_persons_injured from motors;
update motors
set number_of_persons_injured = 0
where number_of_persons_injured is null;

select distinct number_of_persons_killed from motors;
update motors
set number_of_persons_killed = 0
where number_of_persons_killed is null;

select distinct number_of_pedestrians_injured from motors;
update motors
set number_of_pedestrians_injured = 0
where number_of_pedestrians_injured is null;

select distinct number_of_pedestrians_killed from motors;
update motors
set number_of_pedestrians_killed = 0
where number_of_pedestrians_killed is null;


select distinct number_of_persons_injured from motors;
update motors
set number_of_persons_injured = 0
where number_of_persons_injured is null;

select distinct number_of_persons_killed from motors;
update motors
set number_of_persons_killed = 0
where number_of_persons_killed is null;


alter table motors 
rename borough to City;

select distinct city from motors;

delete from motors
where city = 'unspecified';

select zip_code from motors
where zip_code is null;

delete from motors 
where zip_code is null;

select latitude from motors
where latitude is null;

delete from motors 
where latitude is null;

select distinct longitude from motors;
delete from motors 
where longitude is null or longitude = 0;

select distinct location from motors;
delete from motors 
where location is null;

select distinct on_street_name from motors;
delete from motors 
where on_street_name is null;

select distinct cross_street_name from motors;
delete from motors 
where cross_street_name is null;

select distinct cross_street_name from motors;
delete from motors 
where cross_street_name is null ;

select distinct off_street_name from motors;
alter table motors 
drop column off_street_name;

select*from motors;