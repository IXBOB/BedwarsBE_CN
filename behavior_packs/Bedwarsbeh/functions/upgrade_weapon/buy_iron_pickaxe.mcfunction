# 升级到铁质镐
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_pickaxe,scores={"镐等级"=2}] ~~~ clear @s bedwars:stone_pickaxe
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_pickaxe,scores={"镐等级"=2}] ~~~ give @s bedwars:iron_pickaxe 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_pickaxe,scores={"镐等级"=2}] ~~~ scoreboard players set @s "镐等级" 3
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_pickaxe,scores={"镐等级"=3}] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f商店 >> §7§l您的镐已升级为等级 3 §f(铁质)" } ] }
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_pickaxe,scores={"镐等级"=3}] ~~~ tag @s remove up_pickaxe
