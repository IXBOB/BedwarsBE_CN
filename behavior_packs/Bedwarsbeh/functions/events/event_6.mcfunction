execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=5,"事件倒计时"=126}] ~~~ scoreboard players set "§d生成末影珍珠猪灵" "游戏显示" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=5,"事件倒计时"=126}] ~~~ scoreboard players set @s "显示事件" 6
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=126}] ~~~ scoreboard players set @s "事件倒计时" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [ { "text" : "§l起床战争 >> §d§l手持末影珍珠僵尸猪灵已在中间岛屿刷新，击杀它们来获得末影珍珠！" } ] }
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~~~ scoreboard players reset "§d生成末影珍珠猪灵" "游戏显示"
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~ ~ ~ summon minecraft:zombie_pigman "§d末影珍珠僵尸猪灵" 0 183 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~ ~ ~ summon minecraft:zombie_pigman "§d末影珍珠僵尸猪灵" 0 183 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~ ~ ~ summon minecraft:zombie_pigman "§d末影珍珠僵尸猪灵" 0 183 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~ ~ ~ summon minecraft:zombie_pigman "§d末影珍珠僵尸猪灵" 0 183 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~~~ scoreboard players set @s "事件倒计时" 127