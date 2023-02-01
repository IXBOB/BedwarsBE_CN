execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=9,"事件倒计时"=130}] ~~~ scoreboard players set "§4距平局 120 秒" "游戏显示" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=9,"事件倒计时"=130}] ~~~ scoreboard players set @s "显示事件" 10
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=10,"事件倒计时"=130}] ~~~ scoreboard players set @s "事件倒计时" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=10,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [ { "text" : "§l起床战争 >> §4§l游戏将在 120 秒后平局" } ] }
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=10,"事件倒计时"=..0}] ~~~ scoreboard players reset "§4距平局 120 秒" "游戏显示"
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=10,"事件倒计时"=..0}] ~~~ scoreboard players set @s "事件倒计时" 131