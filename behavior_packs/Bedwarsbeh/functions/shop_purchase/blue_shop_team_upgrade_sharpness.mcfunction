execute @s[scores={"分队"=2},lm=400] ~~~ tag @s add want_upgrade_sharpness_blue
execute @s[scores={"分队"=2},l=399] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_item_denied"} ] }
execute @s[scores={"分队"=2},l=399] ~~~ playsound mob.endermen.portal @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝锋利等级"=..2}] ~~~ execute @a[tag=want_upgrade_sharpness_blue] ~~~ tag @s add upgrade_blue_sharpness
execute @a[tag=upgrade_blue_sharpness] ~~~ tellraw @s { "rawtext" : [ { "text" : "§d§lYou upgraded the §r§6team SHARPNESS" } ] }
execute @a[tag=upgrade_blue_sharpness] ~~~ tellraw @a[scores={"分队"=2}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_sharpness_blue]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_team_upgrade_sharpness"}] }
execute @a[tag=upgrade_blue_sharpness] ~~~ playsound note.pling @s ~~~
execute @a[tag=upgrade_blue_sharpness] ~~~ scoreboard players add @s own_xp -400
execute @a[tag=upgrade_blue_sharpness] ~~~ xp -400L @s
execute @a[tag=upgrade_blue_sharpness] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "蓝锋利等级" 1
execute @s[tag=upgrade_blue_sharpness] ~~~ function team_upgrade_sharpness
execute @s[tag=upgrade_blue_sharpness] ~~~ function shop_purchase/team_upgrade_clear_items
execute @s[tag=upgrade_blue_sharpness] ~~~ function shop_purchase/team_upgrade_give_items
tag @a remove want_upgrade_sharpness_blue
tag @a remove upgrade_blue_sharpness