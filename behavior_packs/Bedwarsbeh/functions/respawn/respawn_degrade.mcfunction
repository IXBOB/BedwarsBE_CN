#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..2,"剑等级"=2..},tag=degrade,tag=run_respawn_command] ~~~ tag @s add degrade_sword
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..2,"剑等级"=2..},tag=degrade,tag=degrade_sword,tag=run_respawn_command] ~~~ scoreboard players set @s "剑等级" 1
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..2},tag=degrade,tag=degrade_sword,tag=run_respawn_command] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l起床战争 >> §c您的剑等级已被重置为等级 1" } ] }
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..2},tag=degrade,tag=degrade_sword,tag=run_respawn_command] ~~~ tag @s remove degrade_sword
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..2,"镐等级"=2..},tag=degrade,tag=run_respawn_command] ~~~ tag @s add degrade_pickaxe
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..2,"镐等级"=2..},tag=degrade,tag=degrade_pickaxe,tag=run_respawn_command] ~~~ scoreboard players add @s "镐等级" -1
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..2},tag=degrade,tag=degrade_pickaxe,tag=run_respawn_command] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l起床战争 >> §c您的镐等级已被降级为等级 " },{ "score" : { "name" : "@s" , "objective" : "镐等级"}}]}
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..2},tag=degrade,tag=degrade_pickaxe,tag=run_respawn_command] ~~~ tag @s remove degrade_pickaxe
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..2,"斧等级"=2..},tag=degrade,tag=run_respawn_command] ~~~ tag @s add degrade_axe
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..2,"斧等级"=2..},tag=degrade,tag=degrade_axe,tag=run_respawn_command] ~~~ scoreboard players add @s "斧等级" -1
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..2},tag=degrade,tag=degrade_axe,tag=run_respawn_command] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l起床战争 >> §c您的斧等级已被降级为等级 " },{ "score" : { "name" : "@s" , "objective" : "斧等级"}}]}
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..2},tag=degrade,tag=degrade_axe,tag=run_respawn_command] ~~~ tag @s remove degrade_axe
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..2,"防具等级"=2..},tag=degrade,tag=run_respawn_command] ~~~ tag @s add degrade_armor
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..2,"防具等级"=2..},tag=degrade,tag=degrade_armor,tag=run_respawn_command] ~~~ scoreboard players add @s "防具等级" -1
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..2},tag=degrade,tag=degrade_armor,tag=run_respawn_command] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l起床战争 >> §c您的护甲等级已被降级为等级 " },{ "score" : { "name" : "@s" , "objective" : "防具等级"}}]}
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..2},tag=degrade,tag=run_respawn_command] ~~~ tag @s remove degrade_armor
#检测经验降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..2},tag=degrade,tag=run_respawn_command] ~~~ tag @s add degrade_xp
#检测经验降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..2},tag=degrade,tag=degrade_xp,tag=run_respawn_command] ~~~ xp -200L @s
#检测经验降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..2},tag=degrade,tag=degrade_xp,tag=run_respawn_command] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l起床战争 >> §c您丢失了 200 经验" }]}
#检测经验降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..2},tag=degrade,tag=degrade_xp,tag=run_respawn_command] ~~~ tag @s remove degrade_xp
#tag-degrade
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..2},tag=degrade,tag=run_respawn_command] ~~~ tag @s remove degrade
#转到function_replaceitem
function respawn/respawn_replaceitem

