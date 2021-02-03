-- shows the sum of population of all countries in 'Europe'
SELECT SUM(population) FROM bbc WHERE region = 'Europe'

-- shows the number of countries with population smaller than 150000
 SELECT COUNT(name) FROM bbc WHERE population < 150000

-- list of core SQL aggregate functions
AVG(), COUNT(), MAX(), MIN(), SUM()

-- shows region & sum of area > 15000000 
 SELECT region, SUM(area)
   FROM bbc 
  WHERE area > 15000000 
  GROUP BY region

-- shows the average population of 'Poland', 'Germany' and 'Denmark'
SELECT AVG(population) FROM bbc WHERE name IN ('Poland', 'Germany', 'Denmark')

-- shows the medium population density of each region
 SELECT region, SUM(population)/SUM(area) AS density FROM bbc GROUP BY region

-- shows the name and population density of the country with the largest population
 SELECT name, population/area AS density FROM bbc WHERE population = (SELECT MAX(population) FROM bbc)

-- shows region with sum area > 2M
  SELECT region, SUM(area) 
   FROM bbc 
  GROUP BY region 
  HAVING SUM(area)<= 20000000