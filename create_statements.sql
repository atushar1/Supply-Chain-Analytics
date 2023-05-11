-- cycle_data

CREATE TABLE `cycle_data` (
  `AT Available Time (iMine)` bigint DEFAULT NULL,
  `Cycle Type` text,
  `Delay Time` bigint DEFAULT NULL,
  `Down Time` bigint DEFAULT NULL,
  `Dumping Duration` double DEFAULT NULL,
  `Estimated Fuel Used` bigint DEFAULT NULL,
  `Fuel Used` double DEFAULT NULL,
  `Full Travel Duration` double DEFAULT NULL,
  `Idle Duration` bigint DEFAULT NULL,
  `iMine Load FCTR Truck` text,
  `Loading Count` double DEFAULT NULL,
  `Loading Duration` double DEFAULT NULL,
  `OPERATINGBURNRATE` double DEFAULT NULL,
  `Payload (kg)` double DEFAULT NULL,
  `TMPH` double DEFAULT NULL,
  `Primary Machine Name` text,
  `Primary Machine Class Name` text,
  `Secondary Machine Name` text,
  `Secondary Machine Class Name` text,
  `Available SMU Time` bigint DEFAULT NULL,
  `Completed Cycle Count` bigint DEFAULT NULL,
  `Cycle Duration` bigint DEFAULT NULL,
  `Cycle SMU Duration` bigint DEFAULT NULL,
  `iMine Availability` bigint DEFAULT NULL,
  `iMine Utilisation` bigint DEFAULT NULL,
  `Primary Machine Category Name` text,
  `Secondary Machine Category Name` text,
  `Cycle End Timestamp (GMT8)` text,
  `Source Loading End Timestamp (GMT8)` double DEFAULT NULL,
  `Source Loading Start Timestamp (GMT8)` double DEFAULT NULL,
  `Queuing Duration` double DEFAULT NULL,
  `Cycle Start Timestamp (GMT8)` text,
  `Source Location Name` text,
  `Destination Location Name` text,
  `Source Location is Active Flag` text,
  `Source Location is Source Flag` text,
  `Destination Location is Active Flag` text,
  `Destination Location is Source Flag` text
);

-- delay data

CREATE TABLE `delay_data` (
  `Delay OID` bigint DEFAULT NULL,
  `Description` text,
  `ECF Class ID` text,
  `Acknowledge Flag` text,
  `Acknowledged Flag` text,
  `Confirmed Flag` text,
  `Engine Stopped Flag` text,
  `Field Notification Required Flag` text,
  `Office Confirm Flag` text,
  `Production Reporting Only Flag` text,
  `Frequency Type` bigint DEFAULT NULL,
  `Shift Type` double DEFAULT NULL,
  `Target Location` double DEFAULT NULL,
  `Target Road` double DEFAULT NULL,
  `Workorder Ref` text,
  `Delay Class Name` text,
  `Delay Class Description` text,
  `Delay Class is Active Flag` text,
  `Delay Class Category Name` text,
  `Target Machine Name` text,
  `Target Machine is Active Flag` text,
  `Target Machine Class Name` text,
  `Target Machine Class Description` text,
  `Target Machine Class is Active Flag` text,
  `Target Machine Class Category Name` text,
  `Delay Reported By Person Name` text,
  `Delay Reported By User Name` text,
  `Delay Status Description` text,
  `Delay Start Timestamp (GMT8)` text,
  `Delay Finish Timestamp (GMT8)` text
) ;

-- location_data

CREATE TABLE `location_data` (
  `Location_Id` bigint DEFAULT NULL,
  `Name` text,
  `Latitude` double DEFAULT NULL,
  `Longitude` double DEFAULT NULL
);


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



