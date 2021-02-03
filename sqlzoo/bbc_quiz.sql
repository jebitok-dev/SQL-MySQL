-- country that end with U
SELECT name
  FROM world
 WHERE name LIKE 'U%'

-- shows population of UK
SELECT population
  FROM world
 WHERE name = 'United Kingdom'

-- writing 'name' = 'FRANCE' properly
SELECT continent 
   FROM world 
  WHERE name = 'France'

-- country with population below 10000/10
 SELECT name, population / 10 
  FROM world 
 WHERE population < 10000

-- name and population of countries in Europe and Asia
SELECT name, population
  FROM world
 WHERE continent IN ('Europe', 'Asia')

-- two rows of specific country names
SELECT name FROM world
 WHERE name IN ('Cuba', 'Togo')

-- two country with population below 40K
SELECT name FROM world
 WHERE continent = 'South America'
   AND population > 40000000