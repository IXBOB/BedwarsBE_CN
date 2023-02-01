 execute @s[scores={"分队"=1},lm=300] ~~~ tag @s add want_upgrade_protection_red
 execute @s[scores={"分队"=1},l=299] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §c您没有足够的经验" } ] }
 execute @s[scores={"分队"=1},l=299] ~~~ playsound mob.endermen.portal @s
 execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红保护等级"=..2}] ~~~ execute @a[tag=want_upgrade_protection_red] ~~~ tag @s add upgrade_red_protection
 execute @a[tag=upgrade_red_protection] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §a您升级了 §r§6团队保护" } ] }
 execute @a[tag=upgrade_red_protection] ~~~ tellraw @a[scores={"分队"=1}] { "rawtext" : [ { "text" : "§f商店 · 团队升级 >> §e " } ,{ "selector" :  "@a[tag=want_upgrade_protection_red]"},{ "text" : "§f§l 升级了 团队保护" }] }
 execute @a[tag=upgrade_red_protection] ~~~ playsound note.pling @s ~~~
 execute @a[tag=upgrade_red_protection] ~~~ xp -300L @s
 execute @a[tag=upgrade_red_protection] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "红保护等级" 1
 execute @a[tag=upgrade_red_protection] ~~~ function team_upgrade_PROTECTIONandSHARPNESS
 tag @a remove want_upgrade_protection_red
 tag @a remove upgrade_red_protection