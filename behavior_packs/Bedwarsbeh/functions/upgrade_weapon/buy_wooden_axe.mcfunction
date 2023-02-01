# 升级到木斧
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_axe,scores={"斧等级"=0}] ~~~ give @s bedwars:wooden_axe 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_axe,scores={"斧等级"=0}] ~~~ scoreboard players set @s "斧等级" 1
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_axe,scores={"斧等级"=1}] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f商店 >> §7§l您的斧已升级为等级 1 §f(木质)(永久)" } ] }
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_axe,scores={"斧等级"=1}] ~~~ tag @s remove up_axe
