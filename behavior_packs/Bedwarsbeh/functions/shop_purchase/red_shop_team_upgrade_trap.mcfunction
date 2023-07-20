execute @s[scores={"分队"=1},lm=100] ~~~ tag @s add want_upgrade_trap_red
execute @s[scores={"分队"=1},l=99] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_item_denied"} ] }
execute @s[scores={"分队"=1},l=99] ~~~ playsound mob.endermen.portal @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红陷阱等级"=..2}] ~~~ execute @a[tag=want_upgrade_trap_red] ~~~ tag @s add upgrade_red_trap
execute @a[tag=upgrade_red_trap] ~~~ tellraw @s { "rawtext" : [ {"translate":"text.tellraw.ingameinfo.purchase_team_upgrade_trap"} ] }
execute @a[tag=upgrade_red_trap] ~~~ tellraw @a[scores={"分队"=1}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_trap_red]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_team_upgrade_trap"}] }
execute @a[tag=upgrade_red_trap] ~~~ playsound note.pling @s ~~~
execute @a[tag=upgrade_red_trap] ~~~ scoreboard players add @s own_xp -100
execute @a[tag=upgrade_red_trap] ~~~ xp -100L @s
execute @a[tag=upgrade_red_trap] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "红陷阱等级" 1
tag @a remove want_upgrade_trap_red
tag @a remove upgrade_red_trap