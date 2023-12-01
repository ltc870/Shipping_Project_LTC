USE shipping;

SELECT *
FROM containers;

SELECT * 
FROM port;

SELECT *
FROM ships;

-- Aggregate query with grouping 
-- return the number of ships in each port,
-- and group them by portName
SELECT portName, COUNT(shipName)
FROM ships
GROUP BY portName;

-- Sub-query
-- return the name of ships, the captain names, and the port name,
-- that was built after 2000 and ports in Harbor Vista
SELECT shipName, captainName, portName, yearBuilt
FROM ships
WHERE yearBuilt > 2000
	AND portName IN (SELECT portName
					 FROM port
                     WHERE portName = 'Harbor Vista');

SELECT SUM(displacement)
FROM ships
WHERE portName IN (SELECT portName
                   FROM port
                   WHERE portName = 'Port Aqua');

-- calculate the volume of the containers that's over 2500000
SELECT 
containerID, 
length, 
width, 
height, 
(length * width * height) AS volume, 
shipName
FROM containers
HAVING volume > 2500000;

SELECT 
port.portName, 
COUNT(containers.containerID) AS containerCount
FROM port
JOIN ships 
	ON port.portName = ships.portName
JOIN containers 
	ON ships.shipName = containers.shipName
GROUP BY port.portName;

SELECT 
ships.shipName, 
ships.captainName, 
port.portName
FROM ships
JOIN port
	ON ships.portName = port.portName;

SELECT 
ROUND(AVG(numberOfCrew)) AS avgNumOfCrew  
FROM ships
WHERE yearBuilt < 2015;

SELECT 
port.portName, 
ROUND(SUM(containers.weight)) AS totalWeightOfContainers
FROM port
JOIN ships
	ON port.portName = ships.portName
JOIN containers
	ON ships.shipName = containers.shipName
GROUP BY port.portName
HAVING totalWeightOfContainers BETWEEN 20000 AND 35000;

SELECT 
ships.shipName, 
ships.captainName, 
port.country
FROM ships
JOIN port
	ON ships.portName = port.portName
WHERE port.city = 'Portside';

SELECT port.portName, 
ROUND(SUM(containers.weight)) AS totalWeightOfContainers, 
ROUND(AVG(displacement),2) AS avgDisplacement
FROM port
JOIN ships
	ON port.portName = ships.portName
JOIN containers
	ON ships.shipName = containers.shipName
GROUP BY port.portName;
