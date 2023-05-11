# Supply-Chain-Analytics
This is a open-pit mining supply chain problem in which clients wants to understand why the production is going less day by day even though there is no surge in demand. As an analyst I have been aprroached by the client to build a live monitoring system, so my task is to understand the key metrics explained by the client and understand the operation on the ground at each location. My job as an analyst is to perform the following 4 tasks:
1 - Understand the problem faced by the mine and take an understanding of the data shared by the client.
2 - Since the client is not very tech-savvy, you need to prepare a cleaned dataset using the dataset provided by him.
3 - Analyse the data using the MySQL Workbench 8.0 and prepare a live tracking system using some set of dashboards using either Tableau or Power BI.
4 - At last, present the findings or key insights to your senior technical manager using a ppt of not more than 8 - 12 slides who wishes to understand the key workings of your analysis along with the insights derived out it.

![image](https://github.com/atushar1/Supply-Chain-Analytics/assets/55868433/bf8a1092-4be8-4902-af23-130024e22ca2)


The above diagram shows the functioning of the eqipments that are operating in the mining process.
-- If empty trucks are not queued at the digger sites, then the digger operation will have to stop until the next empty truck arrives. Similarly, if there is no loaded truck at the crusher site, the crusher operation is stopped until a loaded truck arrives and dumps additional ore. Thus, in a typical scenario, it is essential to ensure that sufficient trucks are assigned at diggers and crushers so that their operations are running smoothly. This will ensure that continuous production is maintained and is maintained at a certain rate.
In a typical Truck Cycle, an empty truck lined up at a digger (Waiting Stage) is first parked at the Loading position (Spotting), where it gets loaded by the digger. After the truck is loaded at the digger, it drives away from the digger and moves to the crusher. This process is called Hauling. Here, it is called hauling because it carries a load to the crusher. At the crusher, the truck is again queued, waiting for its turn.
-- As soon as its turn comes, it backs into the crusher which is called Backing and at this position, it would offload the ore into the crusher and this is called Tipping. After this, the truck becomes empty and heads back to wait for loading at a digger (Travelling). This cycle from Waiting, Spotting, Loading, Hauling, Backing, Tipping, Travelling and back to Waiting is called the Truck Cycle.
-- Similarly, diggers also operate in a cyclic manner. Each digger has a swing arm, which carries the load in a clockwise direction in order to gather the ore and add to the stockpile. This is called Crowding. Next, the digger would place the bucket load, which is called Load, into a truck. This requires multiple cycles to load the truck while using buckets to load.




