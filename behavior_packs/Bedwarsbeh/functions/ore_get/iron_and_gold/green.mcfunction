scoreboard players operation @s own_xp += @e[type=armor_stand,name=spawn.green_iron,scores={G_iron_count=1..}] G_iron_count
scoreboard players operation @s own_xp += @e[type=armor_stand,name=spawn.green_gold,scores={G_gold_count=7..}] G_gold_count
tag @s add cache
execute @e[type=armor_stand,name=spawn.green_iron,scores={G_iron_count=1..}] ~~~ execute @a[tag=cache] ~~~ playsound bedwars.pick_items_pop @s ~~~ 0.5
tag @s remove cache
