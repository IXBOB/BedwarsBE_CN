execute @s[scores={"分队"=4},lm=400] ~~~ tag @s add want_upgrade_sharpness_green
execute @s[scores={"分队"=4},l=399] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_item_denied"} ] }
execute @s[scores={"分队"=4},l=399] ~~~ playsound mob.endermen.portal @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"绿锋利等级"=..2}] ~~~ execute @a[tag=want_upgrade_sharpness_green] ~~~ tag @s add upgrade_green_strength
execute @a[tag=upgrade_green_strength] ~~~ tellraw @s { "rawtext" : [ { "text" : "§d§lYou upgraded the §r§6team SHARPNESS" } ] }
execute @a[tag=upgrade_green_strength] ~~~ tellraw @a[scores={"分队"=4}] { "rawtext" : [ { "text" : "§lShop · Team Upgrade >> §e " } ,{ "selector" :  "@a[tag=want_upgrade_sharpness_green]"},{ "text" : "§f§l upgraded the team SHARPNESS" }] }
execute @a[tag=upgrade_green_strength] ~~~ playsound note.pling @s ~~~
execute @a[tag=upgrade_green_strength] ~~~ scoreboard players add @s own_xp -400
execute @a[tag=upgrade_green_strength] ~~~ xp -400L @s
execute @a[tag=upgrade_green_strength] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "绿锋利等级" 1
execute @e[type=armor_stand,name=main,scores={game_version=1}] ~~~ execute @a[tag=upgrade_green_strength] ~~~ function team_upgrade_PROTECTIONandSHARPNESS
execute @e[type=armor_stand,name=main,scores={game_version=2}] ~~~ execute @a[tag=upgrade_green_strength] ~~~ function team_upgrade_PROTECTIONandSHARPNESS_old2
tag @a remove want_upgrade_sharpness_green
tag @a remove upgrade_green_strength