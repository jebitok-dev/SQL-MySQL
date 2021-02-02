# COUNT --> return single value from whole character
SELECT users.id. users.name, COUNT(posts.*) AS posts_written
FROM users
JOIN posts ON users.id = posts.user_id
GROUP BY users.id;

--  returns the total number of rows in the table friends_of_pickles
SELECT COUNT(*) FROM friends_of_pickles;

# WHERE clause
SELECT users.id, users.name, COUNT(posts.*) AS posts_written
FROM users
JOIN posts ON users.id = posts.user_id
GROUP BY users.id
HAVING posts_written >= 10; 

-- return the number of rows in friends_of_pickles where the species is a dog
SELECT COUNT(*) FROM friends_of_pickles WHERE species = 'dog'

-- SUM
-- find the total num_books_read made by this family
SELECT SUM(num_books_read) FROM family_members

-- AVG
-- find the average num_books_read made by each family member
SELECT AVG(num_books_read) FROM family_members;

-- MAX and MIN
-- find the highest number of legs in a family member (2)
SELECT MAX(num_books_read) FROM family_members;

-- GROUP BY
-- use aggregate functions such as COUNT, SUM, AVG, MAX, and MIN with the GROUP BY clause
-- return the tallest height for each species
SELECT MAX(height_cm), species FROM friends_of_pickles GROUP BY species

--  Nested queries
-- return the family members that have the highest num_books_read


