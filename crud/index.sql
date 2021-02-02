-- SELECT
SELECT * FROM family_members
-- The * above means that all of the columns will be returned, which in this case are id, name, gender, species, and num_books_read. 

-- SELECT specific columns
-- return just the name and species columns?
 SELECT name, species FROM family_members;.

-- WHERE...Equals
-- query that returns all of the rows that refer to dogs
SELECT * FROM family_members WHERE species = 'dog';

-- WHERE ... Greater than
-- return all rows of family members whose num_books_read is greater than 190
SELECT * FROM family_members WHERE num_books_read > 190;

-- WHERE ... Greater than or equal
-- return all rows in family_members where num_books_read is a value greater or equal to 180
SELECT * family_members where num_books_read >= 180

-- SELECT & AND 
-- Can you find all of Pickles' friends that are dogs and under the height of 45cm?
SELECT * FROM friends_of_pickles WHERE height_cm < 45 AND species = 'dog'

-- OR
-- find all of Pickles' friends that are dogs or under the height of 45cm
SELECT * FROM friends_of_pickles WHERE species = 'dog' OR height_cm < 45;

-- IN
-- return the rows that are not cats or dogs
SELECT * FROM friends_of_pickles WHERE species NOT IN ('cat', 'dog')

-- DISTINCT
-- return a list of the distinct species of animals greater than 50cm in height
SELECT DISTINCT species FROM friends_of_pickles WHERE height_cm > 50;

-- ORDER BY
-- sorts the friends_of_pickles by height_cm in descending order
SELECT * FROM friends_of_pickles ORDER BY height_cm DESC

-- LIMIT # of returned rows
-- return the single row (and all columns) of the tallest friends_of_pickles
SELECT * FROM friends_of_pickles ORDER BY height_cm DESC LIMIT 1

-- COUNT(*)
-- returns the total number of rows in the table friends_of_pickles



