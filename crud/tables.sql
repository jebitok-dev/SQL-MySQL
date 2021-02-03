-- Table alias
-- use left joins to match character names with the actors that play them, and use aliases to make the query shorter? The aliases for character, character_actor, and actor should be c, ca, and a. 
SELECT c.name, a.name
FROM character AS c
LEFT JOIN character_actor AS ca
ON c.id = ca.character_id
LEFT JOIN actor AS a
ON ca.actor_id = a.id

-- Column alias
-- use left joins to match character names with the actors that play them, and use aliases to call the two columns returned character and actor
SELECT character.name AS character, actor.name AS actor
FROM character
LEFT JOIN character_actor
ON character.id = character_actor.character_id
LEFT JOIN actor
ON character_actor.actor_id = actor.id;

-- Self joins
-- returns the name of an employee and the name of their boss? Use column aliases to make the columns employee_name and boss_name.




