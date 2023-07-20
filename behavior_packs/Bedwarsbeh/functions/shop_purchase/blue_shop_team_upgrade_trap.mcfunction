execute @s[scores={"分队"=2},lm=100] ~~~ tag @s add want_upgrade_trap_blue
execute @s[scores={"分队"=2},l=99] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_item_denied"} ] }
execute @s[scores={"分队"=2},l=99] ~~~ playsound mob.endermen.portal @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=..2}] ~~~ execute @a[tag=want_upgrade_trap_blue] ~~~ tag @s add upgrade_blue_trap
execute @a[tag=upgrade_blue_trap] ~~~ tellraw @s { "rawtext" : [ {"translate":"text.tellraw.ingameinfo.purchase_team_upgrade_trap"} ] }
execute @a[tag=upgrade_blue_trap] ~~~ tellraw @a[scores={"分队"=2}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_trap_blue]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_team_upgrade_trap"}] }
execute @a[tag=upgrade_blue_trap] ~~~ playsound note.pling @s ~~~
execute @a[tag=upgrade_blue_trap] ~~~ scoreboard players add @s own_xp -100
execute @a[tag=upgrade_blue_trap] ~~~ xp -100L @s
execute @a[tag=upgrade_blue_trap] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "蓝陷阱等级" 1
tag @a remove want_upgrade_trap_blue
tag @a remove upgrade_blue_trap