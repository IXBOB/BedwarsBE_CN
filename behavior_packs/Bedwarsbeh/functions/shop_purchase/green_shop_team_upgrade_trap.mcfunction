execute @s[scores={"分队"=4},lm=100] ~~~ tag @s add want_upgrade_trap_green
execute @s[scores={"分队"=4},l=99] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_item_denied"} ] }
execute @s[scores={"分队"=4},l=99] ~~~ playsound mob.endermen.portal @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"绿陷阱等级"=..2}] ~~~ execute @a[tag=want_upgrade_trap_green] ~~~ tag @s add upgrade_green_trap
execute @a[tag=upgrade_green_trap] ~~~ tellraw @s { "rawtext" : [ {"translate":"text.tellraw.ingameinfo.purchase_team_upgrade_trap"} ] }
execute @a[tag=upgrade_green_trap] ~~~ tellraw @a[scores={"分队"=4}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_trap_green]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_team_upgrade_trap"}] }
execute @a[tag=upgrade_green_trap] ~~~ playsound note.pling @s ~~~
execute @a[tag=upgrade_green_trap] ~~~ scoreboard players add @s own_xp -100
execute @a[tag=upgrade_green_trap] ~~~ xp -100L @s
execute @a[tag=upgrade_green_trap] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "绿陷阱等级" 1
tag @a remove want_upgrade_trap_green
tag @a remove upgrade_green_trap