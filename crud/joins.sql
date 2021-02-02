-- Inner joins
-- use an inner join to pair each character name with the actor who plays them? Select the columns: character.name, character_actor.actor_name
SELECT character.name, character_actor.actor_name
FROM character
INNER JOIN character_actor
ON character.id = character_actor.character_id;

-- Multiple joins
-- use two joins to pair each character name with the actor who plays them? Select the columns: character.name, actor.name
SELECT character.name, actor.name
FROM character
INNER JOIN character_actor
ON character.id = character_actor.character_id
INNER JOIN actor
ON character_actor.actor_id = actor.id;

-- Joins with WHERE
-- return a list of characters and TV shows that are not named "Willow Rosenberg" and not in the show "How I Met Your Mother"
FROM character
INNER JOIN character_tv_show
ON character.id = character_tv_show.character_id
INNER JOIN tv_show
ON character_tv_show.tv_show_id = tv_show.id WHERE character.name != 'Willow Rosenberg' AND tv_show.name != 'How I Met Your Mother' 

-- Left joins
-- use left joins to match character names with the actors that play them? Select the columns: character.name, actor.name
SELECT character.name, actor.name
FROM character
LEFT JOIN character_actor
ON character.id = character_actor.character_id
LEFT JOIN actor
ON character_actor.actor_id = actor.id
