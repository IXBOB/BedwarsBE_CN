execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=128}] ~~~ scoreboard players set "§4§l床自毁" "游戏显示" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=128}] ~~~ scoreboard players set @s "显示事件" 8
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=128}] ~~~ scoreboard players set @s "事件倒计时" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [ { "text" : "§l起床战争 >> §4§l所有队伍的床已自毁，所有玩家无法重生" } ] }
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=..0}] ~~~ scoreboard players reset "§4§l床自毁" "游戏显示"
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=..0}] ~~~ scoreboard players set @s "红床存活" 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=..0}] ~~~ scoreboard players set @s "蓝床存活" 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=..0}] ~~~ title @a[scores={"分队"=1..2,"存活"=1}] title §c§l所有床自毁
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=..0}] ~~~ title @a[scores={"分队"=1..2,"存活"=1}] subtitle 您已无法重生！
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=..0}] ~~~ fill 0 185 46 0 185 46 air 0 replace bed
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=..0}] ~~~ fill 0 185 -47 0 185 -47 air 0 replace bed
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=..0}] ~~~ playsound mob.enderdragon.growl @a[scores={"分队"=1..2}]
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=..0}] ~~~ scoreboard players set @s "事件倒计时" 129