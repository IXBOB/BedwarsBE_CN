execute @s[scores={"分队"=1},lm=300] ~~~ tag @s add want_upgrade_protection_red
execute @s[scores={"分队"=1},l=299] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_item_denied"} ] }
execute @s[scores={"分队"=1},l=299] ~~~ playsound mob.endermen.portal @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红保护等级"=..2}] ~~~ execute @a[tag=want_upgrade_protection_red] ~~~ tag @s add upgrade_red_protection
execute @s[tag=upgrade_red_protection] ~~~ tellraw @s { "rawtext" : [ { "text" : "§d§lYou upgraded the §r§6team PROTECTION" } ] }
execute @s[tag=upgrade_red_protection] ~~~ tellraw @a[scores={"分队"=1}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_protection_red]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_team_upgrade_protection"}] }
execute @s[tag=upgrade_red_protection] ~~~ playsound note.pling @s ~~~
execute @s[tag=upgrade_red_protection] ~~~ scoreboard players add @s own_xp -300
execute @s[tag=upgrade_red_protection] ~~~ xp -300L @s
execute @s[tag=upgrade_red_protection] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "红保护等级" 1
execute @e[type=armor_stand,name=main,scores={game_version=1}] ~~~ execute @a[tag=upgrade_red_protection] ~~~ function team_upgrade_protection
execute @e[type=armor_stand,name=main,scores={game_version=2}] ~~~ execute @a[tag=upgrade_red_protection] ~~~ function team_upgrade_protection_old2
tag @s remove want_upgrade_protection_red
tag @s remove upgrade_red_protection