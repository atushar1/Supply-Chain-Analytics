# Supply-Chain-Analytics
 This is a open-pit mining supply chain problem in which clients wants to understand why the production is going less day by day even though there is no surge in demand. As an analyst I have been aprroached by the client to build a live monitoring system, so my task is to understand the key metrics explained by the client and understand the operation on the ground at each location. My job as an analyst is to perform the following 4 tasks:
1 - Understand the problem faced by the mine and take an understanding of the data shared by the client.
2 - Since the client is not very tech-savvy, you need to prepare a cleaned dataset using the dataset provided by him.
3 - Analyse the data using the MySQL Workbench 8.0 and prepare a live tracking system using some set of dashboards using either Tableau or Power BI.
4 - At last, present the findings or key insights to your senior technical manager using a ppt of not more than 8 - 12 slides who wishes to understand the key workings of your analysis along with the insights derived out it.

![image](https://github.com/atushar1/Supply-Chain-Analytics/assets/55868433/bf8a1092-4be8-4902-af23-130024e22ca2)


The above diagram shows the functioning of the eqipments that are operating in the mining process.
-- If empty trucks are not queued at the digger sites, then the digger operation will have to stop until the next empty truck arrives. Similarly, if there is no      loaded truck at the crusher site, the crusher operation is stopped until a loaded truck arrives and dumps additional ore. Thus, in a typical scenario, it is      essential to ensure that sufficient trucks are assigned at diggers and crushers so that their operations are running smoothly. This will ensure that continuous    production is maintained and is maintained at a certain rate.
-- In a typical Truck Cycle, an empty truck lined up at a digger (Waiting Stage) is first parked at the Loading position (Spotting), where it gets loaded by the      digger. After the truck is loaded at the digger, it drives away from the digger and moves to the crusher. This process is called Hauling. Here, it is called      hauling because it carries a load to the crusher. At the crusher, the truck is again queued, waiting for its turn.
-- As soon as its turn comes, it backs into the crusher which is called Backing and at this position, it would offload the ore into the crusher and this is called    Tipping. After this, the truck becomes empty and heads back to wait for loading at a digger (Travelling). This cycle from Waiting, Spotting, Loading, Hauling,    Backing, Tipping, Travelling and back to Waiting is called the Truck Cycle.
-- Similarly, diggers also operate in a cyclic manner. Each digger has a swing arm, which carries the load in a clockwise direction in order to gather the ore and    add to the stockpile. This is called Crowding. Next, the digger would place the bucket load, which is called Load, into a truck. This requires multiple cycles    to load the truck while using buckets to load.

# Data has been provided by the company which consists Cycle data, Location data and Delay data.

-- Cycle data consisting of the movement information of the equipment, duration of the cycles and much more
-- Location data consisting of the location information of the equipment and the other similar attributes.
-- Delay data consisting of the delay in service time of the on-ground equipment for both planned and unplanned delay schedules and other important attributes        related to delay.








In addition to the above data, there is an additional dataset that I have derived from the cycle data, which is essentially the movement data of the equipment on the open-pit mine. It should have the following details.

1 - Machine Name
2 - Source Location
3 - Destination Location
4 - Payload
5 - Start Time
6 - End Time
7 - Movement Id




After having done that, I  have created stored procedures for the following:

1 - Equipment Master
2 - Equipment Type Master
3 - Location Master
4 - Location Type Master
5 - Stored Procedure for Cycle Data
6 - Stored Procedure for Delay Data
7 - Stored Procedure for Movement Data
8 - Stored Procedure for OEE (you will understand what is OEE in the upcoming segment).


![image](https://github.com/atushar1/Supply-Chain-Analytics/assets/55868433/76266143-d821-49a2-9e8f-3772fbb1cb4a)


You needed to build 5 dashboards. 

1 - Executive Dashboard: Level 1 Dashboard with all the details in one.
2 - Equipment Level Production
3 - Efficiency, Accuracy and Quality of the Equipments
4 - Key Metrics of Lowest Performing Equipments
5 - Top Performing Equipments.
