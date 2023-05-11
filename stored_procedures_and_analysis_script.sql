-- This file consists of create statements for euipment master, equipment type master, location master, location type master,
-- movement data, the stored procedure of all the above table and the analysis done.
-- the data has been imported from Jupyter Notebook


USE capstone_supply_chain;

-- Creating the following tables
-- equipment master

CREATE TABLE `equipment_master` (
  `Primary Machine Name` text,
  `Primary Machine Class Name` text,
  `Secondary Machine Name` text,
  `Secondary Machine Class Name` text,
  `Cycle Type` text,
  `Loading Count` text,
  `iMine Load FCTR Truck` text,
  `AT Available Time (iMine)` bigint DEFAULT NULL,
  `Full Travel Duration` text,
  `Delay Time` bigint DEFAULT NULL,
  `Down Time` bigint DEFAULT NULL,
  `Idle Duration` bigint DEFAULT NULL,
  `Loading Duration` text,
  `Dumping Duration` text,
  `Payload (kg)` text,
  `Estimated Fuel Used` bigint DEFAULT NULL,
  `Fuel Used` text,
  `OPERATINGBURNRATE` double DEFAULT NULL,
  `TMPH` text
) ;

-- equipment type master

CREATE TABLE `equipment_type_master` (
  `Cycle Type` text,
  `Primary Machine Category Name` text,
  `Secondary Machine Category Name` text,
  `AT Available Time (iMine)` bigint DEFAULT NULL,
  `Available SMU Time` bigint DEFAULT NULL,
  `Cycle Duration` bigint DEFAULT NULL,
  `Cycle SMU Duration` bigint DEFAULT NULL,
  `Delay Time` bigint DEFAULT NULL,
  `Down Time` bigint DEFAULT NULL,
  `Completed Cycle Count` bigint DEFAULT NULL,
  `iMine Availability` bigint DEFAULT NULL,
  `iMine Utilisation` bigint DEFAULT NULL
) ;


CREATE TABLE `location_master` (
  `Source Location Name` text,
  `Destination Location Name` text,
  `Queuing Duration` text,
  `Cycle End Timestamp (GMT8)` text,
  `Cycle Start Timestamp (GMT8)` text,
  `Source Loading Start Timestamp (GMT8)` text,
  `Source Loading End Timestamp (GMT8)` text
);


CREATE TABLE `location_type_master` (
  `Queuing Duration` text,
  `Source Location is Active Flag` text,
  `Source Location is Source Flag` text,
  `Destination Location is Active Flag` text,
  `Destination Location is Source Flag` text
);


CREATE TABLE `movement_data` (
  `Primary Machine Name` text,
  `Source Location Name` text,
  `Destination Location Name` text,
  `Payload (kg)` text,
  `Cycle Start Timestamp (GMT8)` text,
  `Cycle End Timestamp (GMT8)` text
);


-- STORED PROCEDURES

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `cycle_data_procedure`()
BEGIN
SELECT `AT Available Time (iMine)`,
    `Cycle Type`,
    `Delay Time`,
    `Down Time`,
    `Dumping Duration`,
    `Estimated Fuel Used`,
    `Fuel Used`,
    `Full Travel Duration`,
    `Idle Duration`,
    `iMine Load FCTR Truck`,
    `Loading Count`,
    `Loading Duration`,
    `OPERATINGBURNRATE`,
    `OPERATINGTIME (CAT)`,
    `Payload (kg)`,
    `TMPH`,
    `Primary Machine Name`,
    `Primary Machine Class Name`,
    `Secondary Machine Name`,
    `Secondary Machine Class Name`,
    `Available SMU Time`,
    `Completed Cycle Count`,
    `Cycle Duration`,
    `Cycle SMU Duration`,
    `iMine Availability`,
    `iMine Utilisation`,
    `Primary Machine Category Name`,
    `Secondary Machine Category Name`,
    `Cycle End Timestamp (GMT8)`,
    `Source Loading End Timestamp (GMT8)`,
    `Source Loading Start Timestamp (GMT8)`,
    `Queuing Duration`,
    `Cycle Start Timestamp (GMT8)`,
    `Source Location Name`,
    `Destination Location Name`,
    `Source Location is Active Flag`,
    `Source Location is Source Flag`,
    `Destination Location is Active Flag`,
    `Destination Location is Source Flag`
FROM cycle_data;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `delay_data_procedure`()
BEGIN
SELECT `Delay OID`,
    `Description`,
    `ECF Class ID`,
    `Acknowledge Flag`,
    `Acknowledged Flag`,
    `Confirmed Flag`,
    `Engine Stopped Flag`,
    `Field Notification Required Flag`,
    `Office Confirm Flag`,
    `Production Reporting Only Flag`,
    `Frequency Type`,
    `Shift Type`,
    `Target Location`,
    `Target Road`,
    `Workorder Ref`,
    `Delay Class Name`,
    `Delay Class Description`,
    `Delay Class is Active Flag`,
    `Delay Class Category Name`,
    `Target Machine Name`,
    `Target Machine is Active Flag`,
    `Target Machine Class Name`,
    `Target Machine Class Description`,
    `Target Machine Class is Active Flag`,
    `Target Machine Class Category Name`,
    `Delay Reported By Person Name`,
    `Delay Reported By User Name`,
    `Delay Status Description`,
    `Delay Start Timestamp (GMT8)`,
    `Delay Finish Timestamp (GMT8)`
FROM delay_data;
END$$
DELIMITER ;



DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `location_data_procedure`()
BEGIN
SELECT `Location_Id`,
    `Name`,
    `Latitude`,
    `Longitude`
FROM location_data;

END$$
DELIMITER ;


DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `equipment_master_procedure`()
BEGIN
SELECT `Primary Machine Name`,
    `Primary Machine Class Name`,
    `Secondary Machine Name`,
    `Secondary Machine Class Name`,
    `Cycle Type`,
    `Loading Count`,
    `iMine Load FCTR Truck`,
    `AT Available Time (iMine)`,
    `Full Travel Duration`,
    `Delay Time`,
    `Down Time`,
    `Idle Duration`,
    `Loading Duration`,
    `Dumping Duration`,
    `Payload (kg)`,
    `Estimated Fuel Used`,
    `Fuel Used`,
    `OPERATINGTIME (CAT)`,
    `OPERATINGBURNRATE`,
    `TMPH`
FROM equipment_master;
END$$
DELIMITER ;


DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `equipment_type_master_procedure`()
BEGIN
SELECT `Cycle Type`,
    `Primary Machine Category Name`,
    `Secondary Machine Category Name`,
    `AT Available Time (iMine)`,
    `Available SMU Time`,
    `Cycle Duration`,
    `Cycle SMU Duration`,
    `Delay Time`,
    `Down Time`,
    `Completed Cycle Count`,
    `iMine Availability`,
    `iMine Utilisation`
FROM equipment_type_master;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `location_master_procedure`()
BEGIN
SELECT `Source Location Name`,
    `Destination Location Name`,
    `Queuing Duration`,
    `Cycle End Timestamp (GMT8)`,
    `Cycle Start Timestamp (GMT8)`,
    `Source Loading Start Timestamp (GMT8)`,
    `Source Loading End Timestamp (GMT8)`
FROM location_master;
END$$
DELIMITER ;


DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `location_type_master_procedure`()
BEGIN
SELECT `Queuing Duration`,
    `Source Location is Active Flag`,
    `Source Location is Source Flag`,
    `Destination Location is Active Flag`,
    `Destination Location is Source Flag`
FROM location_type_master;
END$$
DELIMITER ;


DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `movement_data_procedure`()
BEGIN
SELECT `Primary Machine Name`,
    `Source Location Name`,
    `Destination Location Name`,
    `Payload (kg)`,
    `Cycle Start Timestamp (GMT8)`,
    `Cycle End Timestamp (GMT8)`
FROM movement_data;
END$$
DELIMITER ;


DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `OEE_procedure`()
BEGIN
WITH oee_metrics AS 
(SELECT 
	`Primary Machine Name`,
    ((`AT available time (imine)` - `idle duration`) - `down time`)/`AT available time (imine)` as availability,
    (`operatingtime (cat)` - `delay time`)/`operatingtime (cat)` as performance,
    ((`operatingtime (cat)` - `idle duration`)- `down time`)/`operatingtime (cat)` as quality
FROM
    cycle_data)
SELECT 
	`Primary Machine Name`,
	round(availability * performance * quality, 3) AS OEE
FROM 
	oee_metrics;

END$$
DELIMITER ;

--

-- preview

SELECT 
    *
FROM
    cycle_data
LIMIT 100;

SELECT 
    COUNT(*) AS Number_of_rows
FROM
    cycle_data;

-- We can see that there are 44522 rows in the cleaned cycle dataset

----- Calculating OEE ------


WITH oee_metrics AS 
(SELECT 
	`Primary Machine Name`,
    ((`AT available time (imine)` - `idle duration`) - `down time`)/`AT available time (imine)` as availability,
    (`operatingtime (cat)` - `delay time`)/`operatingtime (cat)` as performance,
    ((`operatingtime (cat)` - `idle duration`)- `down time`)/`operatingtime (cat)` as quality
FROM
    cycle_data)
SELECT 
	`Primary Machine Name`,
	round(availability * performance * quality, 3) AS OEE
FROM 
	oee_metrics;
    

-- Number of euipments operating in the field ---

SELECT 
    COUNT(DISTINCT `primary machine name`) AS unique_primary_machines
FROM
    cycle_data;


-- 126 machines currently operating

-- Number of equipments under maintenance

SELECT 
    COUNT(DISTINCT `primary machine name`) AS unique_primary_machines
FROM
    cycle_data
where `Down Time` > 0;
 
-- 118 machines have some down time
 
-- number of cycles completed by each machine
 
SELECT 
    `primary machine name` AS primary_machine_name,
    SUM(`completed cycle count`) AS number_of_cycles_completed
FROM
    cycle_data
GROUP BY primary_machine_name
ORDER BY number_of_cycles_completed DESC;
 
  
-- Production vs Plan
-- This query is a comparison of the average cycle duration with and without delays

SELECT 
    `primary machine name` AS primary_machine_name,
    SUM(`completed cycle count`) AS number_of_cycles,
    AVG(`cycle duration`) AS avg_cycle_duration,
    AVG((`cycle duration` - `delay time`)) AS net_avg_cycle_duration
FROM
    cycle_data
GROUP BY primary_machine_name
ORDER BY number_of_cycles DESC;


-- Average Payload carried by trucks

SELECT 
    `primary machine name` AS primary_machine_name,
    ROUND(AVG(`payload (kg)`), 2) AS avg_payload_carried
FROM
    cycle_data
GROUP BY primary_machine_name;
 
 

-- Avg down time of machines

SELECT 
    `primary machine name` AS primary_machine_name,
    ROUND(AVG(`down time`),2) AS avg_down_time
FROM
    cycle_data
WHERE
    `down time` > 0
GROUP BY primary_machine_name
ORDER BY avg_down_time DESC;

-- 
-- Avg down time by category
SELECT 
    `primary machine category name` AS primary_machine_category,
    ROUND(AVG(`down time`),2) AS avg_down_time
FROM
    cycle_data
WHERE
    `down time` > 0
GROUP BY primary_machine_category
ORDER BY avg_down_time DESC;

-- Average Cycle time by equipment

SELECT 
    `primary machine name` AS primary_machine_name,
    `primary machine category name` AS primary_machine_category,
    ROUND(AVG(`cycle duration`),2) AS avg_cycle_duration
FROM
    cycle_data
GROUP BY primary_machine_name
ORDER BY avg_cycle_duration;

-- Average Cycle time by category

SELECT 
    `primary machine category name` AS primary_machine_category,
    ROUND(AVG(`cycle duration`), 2) AS avg_cycle_duration
FROM
    cycle_data
GROUP BY primary_machine_category
ORDER BY avg_cycle_duration DESC;


-- AVG payload by category

SELECT 
    `primary machine category name` AS primary_machine_category,
    ROUND(AVG(`cycle duration`), 2) AS avg_cycle_duration,
    ROUND(AVG(`payload (kg)`),2) AS avg_payload
FROM
    cycle_data
GROUP BY primary_machine_category
ORDER BY avg_cycle_duration DESC;

-- Only truck, loader and shovel classes are carrying the payload
-- Let's explore the 3 classes

SELECT 
    `primary machine name` AS primary_machine_name,
	ROUND(AVG(`down time`), 2) AS avg_down_time,
    ROUND(AVG(`payload (kg)`),2) AS avg_payload
FROM
    cycle_data
WHERE `primary machine category name` = 'Truck Classes'
GROUP BY primary_machine_name
ORDER BY avg_down_time DESC;

-- We've identified the machines with the highest and lowest downtimes


-- exploring the cycle types
SELECT 
	`cycle type` as cycle_type,
    COUNT(`cycle type`) as cycle_type_count
FROM
    cycle_data
GROUP BY cycle_type;

-- TruckCycle: 20710 | LoaderCycle 21539 | AuxMobileCycle 2273

SELECT 
	`cycle type` as cycle_type,
    COUNT(`cycle type`) as cycle_type_count,
	ROUND(AVG(`cycle duration`), 2) AS avg_cycle_duration,
	ROUND(AVG(`down time`), 2) AS avg_down_time,
    ROUND(AVG(`payload (kg)`),2) AS avg_payload
FROM
    cycle_data
GROUP BY cycle_type;

-- Loader cycle takes much lesser time than truck cycle

SELECT 
    `primary machine name` AS primary_machine_name,
    ROUND(AVG(`cycle duration`), 2) AS avg_cycle_duration,
    ROUND(AVG(`down time`), 2) AS avg_down_time,
    ROUND(AVG(`payload (kg)`), 2) AS avg_payload
FROM
    cycle_data
WHERE
    `cycle type` = 'TruckCycle'
GROUP BY primary_machine_name
ORDER BY avg_down_time DESC;

-- Truck cycle machines are prefixed with DT

-- exploring cycle duration, downtime and payload of loader cycle

SELECT 
    `primary machine name` AS primary_machine_name,
    `primary machine category name` AS primary_machine_category,
    ROUND(AVG(`cycle duration`), 2) AS avg_cycle_duration,
    ROUND(AVG(`down time`), 2) AS avg_down_time,
    ROUND(AVG(`payload (kg)`), 2) AS avg_payload
FROM
    cycle_data
WHERE
    `cycle type` = 'LoaderCycle'
GROUP BY primary_machine_name
ORDER BY avg_down_time DESC;

-- Loadercycle machines are prefixed with either EX or WL

-- explore loading and dumping

SELECT 
    `primary machine name` AS primary_machine_name,
    `primary machine category name` AS primary_machine_category,
    ROUND(AVG(`loading duration`), 2) AS loading_duration,
    ROUND(AVG(`down time`), 2) AS avg_down_time,
    ROUND(AVG(`payload (kg)`), 2) AS avg_payload
FROM
    cycle_data
WHERE `Cycle Type` = 'LoaderCycle'
GROUP BY primary_machine_name
ORDER BY loading_duration ASC;


-- dumping
SELECT 
    `primary machine name` AS primary_machine_name,
    `primary machine category name` AS primary_machine_category,
    ROUND(AVG(`dumping duration`), 2) AS dumping_duration,
    ROUND(AVG(`down time`), 2) AS avg_down_time,
    ROUND(AVG(`payload (kg)`), 2) AS avg_payload
FROM
    cycle_data
WHERE `Cycle Type` = 'TruckCycle'
GROUP BY primary_machine_name
ORDER BY dumping_duration DESC;


-- OEE

WITH oee_metrics AS 
(SELECT 
	`Primary Machine Name`,
    ((`AT available time (imine)` - `idle duration`) - `down time`)/`AT available time (imine)` as availability,
    (`operatingtime (cat)` - `delay time`)/`operatingtime (cat)` as performance,
    ((`operatingtime (cat)` - `idle duration`)- `down time`)/`operatingtime (cat)` as quality
FROM
    cycle_data)
SELECT 
	`Primary Machine Name` as primary_machine_name,
	round(availability * performance * quality, 3) AS OEE
FROM 
	oee_metrics
GROUP BY primary_machine_name
ORDER BY OEE DESC;



-- individual factors of OEE
SELECT 
	`Primary Machine Name` as primary_machine_name,
    ((`AT available time (imine)` - `idle duration`) - `down time`)/`AT available time (imine)` as availability,
    (`operatingtime (cat)` - `delay time`)/`operatingtime (cat)` as performance,
    ((`operatingtime (cat)` - `idle duration`)- `down time`)/`operatingtime (cat)` as quality
FROM
    cycle_data
GROUP BY primary_machine_name
ORDER BY performance DESC
;

-- Loading

SELECT 
    ROUND(AVG(`loading duration`), 2) AS loading_duration
FROM
    cycle_data
WHERE `Primary machine category name` IN ('Loader Classes','Truck Classes', 'Shovel Classes');

-- Loader, Truck and Shovel classes are the only classes to have a loading time. On an average it itakes 183 seconds

-- dumping duratons


SELECT 
    ROUND(AVG(`dumping duration`), 2) AS loading_duration
FROM
    cycle_data
WHERE `Primary machine category name` LIKE 'Truck Classes';


-- Travelling durations
SELECT 
    `primary machine name` AS primary_machine_name,
    `primary machine category name` AS primary_machine_category,
    ROUND(AVG(`full travel duration`), 2) AS full_travel_duration
FROM
    cycle_data
GROUP BY primary_machine_name
ORDER BY full_travel_duration DESC;

-- only the truck classes travel


-- totaly cycle durations

SELECT 
    `primary machine name` AS primary_machine_name,
    SUM(`Cycle Duration`) AS cycle_duration
FROM
    cycle_data
GROUP BY primary_machine_name;

-- payload per cycle

SELECT 
    ROUND(SUM(`payload (kg)`) / SUM(`completed cycle count`),1) AS payload_per_cycle
FROM
    cycle_data;
    
-- On every cycle completion, 229 tonnes of payload is being transported


SELECT 
    ROUND(SUM(`payload (kg)`) / SUM(`completed cycle count`),1) AS payload_per_cycle,
    ROUND(SUM(`cycle duration`) / SUM(`completed cycle count`),1) AS cycle_time_per_cycle,
    ROUND((SUM(`cycle duration`) - SUM(`delay time`)) / SUM(`completed cycle count`),1) AS cycle_time_without_delay
    
FROM
    cycle_data;

-- performance of equipments

SELECT 
	`Primary Machine category Name` as primary_machine_category,
    ROUND(AVG((`operatingtime (cat)` - `delay time`)/`operatingtime (cat)`),2) as performance,
    ROUND(AVG(`delay time`), 2) AS avg_delay_time
    
FROM
    cycle_data
GROUP BY primary_machine_category
ORDER BY performance DESC
;


-- exploring source locations

SELECT DISTINCT
    `source location name` AS source_location
FROM
    cycle_data;

-- 30 source locations

-- avg loading durations of each source

SELECT 
    `source location name` AS source_location,
    ROUND(AVG(`loading duration`),2) AS loading_duration
FROM
    cycle_data
GROUP BY source_location
ORDER BY loading_duration DESC;

-- exploring destination durations

SELECT DISTINCT
    `destination location name` AS destination_location
FROM
    cycle_data;

-- 69 destination locations
