execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=127}] ~~~ scoreboard players set "§4距床自毁 120 秒" "游戏显示" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=127}] ~~~ scoreboard players set @s "显示事件" 7
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=127}] ~~~ scoreboard players set @s "事件倒计时" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [ { "text" : "§l起床战争 >> §4§l所有队伍的床将在 120 秒后自毁" } ] }
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ scoreboard players reset "§4距床自毁 120 秒" "游戏显示"
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ scoreboard players set @s "事件倒计时" 128