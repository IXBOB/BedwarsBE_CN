tag @s add setting.start.players
execute @e[type=armor_stand,scores={gameSTART=1..}] ~ ~ ~ tellraw @a[tag=setting.start.players] { "rawtext": [ { "text": "§f§l起床战争 >> §c当前游戏状态下无法修改游戏开始人数。" } ] }
execute @e[type=armor_stand,scores={gameSTART=0},tag=set.start.players.2] ~ ~ ~ tellraw @a[tag=setting.start.players] { "rawtext": [ { "text": "§f§l起床战争 >> §c目前游戏开始人数已被设为 2。" } ] }
tag @e[type=armor_stand,scores={gameSTART=0},tag=set.start.players.2] add set.start.players.failed
tag @s remove setting.start.players
tag @e[type=armor_stand,scores={gameSTART=0}] add set.start.players.2
tag @e[type=armor_stand,scores={gameSTART=0}] remove set.start.players.3
tag @e[type=armor_stand,scores={gameSTART=0}] remove set.start.players.4
tag @e[type=armor_stand,scores={gameSTART=0}] remove set.start.players.5
tag @e[type=armor_stand,scores={gameSTART=0}] remove set.start.players.6
tag @e[type=armor_stand,scores={gameSTART=0}] remove set.start.players.7
tag @e[type=armor_stand,scores={gameSTART=0}] remove set.start.players.8
execute @e[type=armor_stand,scores={gameSTART=0},tag=set.start.players.2,tag=!set.start.players.failed] ~ ~ ~ tellraw @a { "rawtext": [ { "text": "§f§l起床战争 >> §e管理员已将游戏开始人数设为 2。" } ] }
tag @e[type=armor_stand,scores={gameSTART=0},tag=set.start.players.2] remove set.start.players.failed