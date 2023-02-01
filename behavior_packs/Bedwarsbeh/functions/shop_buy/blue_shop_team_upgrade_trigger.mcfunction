 execute @s[scores={"分队"=2},lm=100] ~~~ tag @s add want_upgrade_trigger_blue
 execute @s[scores={"分队"=2},l=99] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §c您没有足够的经验" } ] }
 execute @s[scores={"分队"=2},l=99] ~~~ playsound mob.endermen.portal @s
 execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=..2}] ~~~ execute @a[tag=want_upgrade_trigger_blue] ~~~ tag @s add upgrade_blue_trigger
 execute @a[tag=upgrade_blue_trigger] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §d§l您购买/升级了 §r§6陷阱" } ] }
 execute @a[tag=upgrade_blue_trigger] ~~~ tellraw @a[scores={"分队"=2}] { "rawtext" : [ { "text" : "§f商店 · 团队升级 >> §e " } ,{ "selector" :  "@a[tag=want_upgrade_trigger_blue]"},{ "text" : "§f§l 购买/升级了陷阱" }] }
 execute @a[tag=upgrade_blue_trigger] ~~~ playsound note.pling @s ~~~
 execute @a[tag=upgrade_blue_trigger] ~~~ xp -100L @s
 execute @a[tag=upgrade_blue_trigger] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "蓝陷阱等级" 1
 execute @a[tag=upgrade_blue_trigger] ~~~ function team_upgrade_TRIGGER
 tag @a remove want_upgrade_trigger_blue
 tag @a remove upgrade_blue_trigger