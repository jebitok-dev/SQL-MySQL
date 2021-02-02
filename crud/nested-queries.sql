--  Nested queries
-- return the family members that have the highest num_books_read
SELECT * FROM family_members WHERE num_books_read = (SELECT MAX(num_books_read) FROM family_members)

-- NULL
-- return all of the rows of family_members where favorite_book is not null
SELECT * FROM family_members WHERE favorite_book IS NOT NULL

-- Date
-- return a list of celebrities that were born after September 1st, 1980 
SELECT * FROM celebs_born WHERE birthdate > '1980-09-1'