 execute @s[scores={"分队"=2},lm=300] ~~~ tag @s add want_upgrade_protection_blue
 execute @s[scores={"分队"=2},l=299] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §c您没有足够的经验" } ] }
 execute @s[scores={"分队"=2},l=299] ~~~ playsound mob.endermen.portal @s
 execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝保护等级"=..2}] ~~~ execute @a[tag=want_upgrade_protection_blue] ~~~ tag @s add upgrade_blue_protection
 execute @a[tag=upgrade_blue_protection] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §a您升级了 §r§6团队保护" } ] }
 execute @a[tag=upgrade_blue_protection] ~~~ tellraw @a[scores={"分队"=2}] { "rawtext" : [ { "text" : "§f商店 · 团队升级 >> §e " } ,{ "selector" :  "@a[tag=want_upgrade_protection_blue]"},{ "text" : "§f§l 升级了 团队保护" }] }
 execute @a[tag=upgrade_blue_protection] ~~~ playsound note.pling @s ~~~
 execute @a[tag=upgrade_blue_protection] ~~~ xp -300L @s
 execute @a[tag=upgrade_blue_protection] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "蓝保护等级" 1
 execute @a[tag=upgrade_blue_protection] ~~~ function team_upgrade_PROTECTIONandSHARPNESS
 tag @a remove want_upgrade_protection_blue
 tag @a remove upgrade_blue_protection