execute @s[tag=op,tag=insider] ~ ~ ~ scoreboard objectives remove "硬币数"
execute @s[tag=op,tag=insider] ~ ~ ~ scoreboard objectives add "硬币数" dummy
execute @s[tag=op,tag=insider] ~ ~ ~ scoreboard objectives remove "等级"
execute @s[tag=op,tag=insider] ~ ~ ~ scoreboard objectives add "等级" dummy
execute @s[tag=op,tag=insider] ~ ~ ~ scoreboard objectives remove "等级经验"
execute @s[tag=op,tag=insider] ~ ~ ~ scoreboard objectives add "等级经验" dummy
execute @s[tag=op,tag=insider] ~ ~ ~ scoreboard objectives remove "总击杀数"
execute @s[tag=op,tag=insider] ~ ~ ~ scoreboard objectives add "总击杀数" dummy
execute @s[tag=op,tag=insider] ~ ~ ~ scoreboard objectives remove "总胜利数"
execute @s[tag=op,tag=insider] ~ ~ ~ scoreboard objectives add "总胜利数" dummy
execute @s[tag=op,tag=insider] ~ ~ ~ scoreboard objectives remove "总游戏数"
execute @s[tag=op,tag=insider] ~ ~ ~ scoreboard objectives add "总游戏数" dummy
scoreboard players add @a "硬币数" 0
scoreboard players add @a "等级" 0
scoreboard players add @a "等级经验" 0
scoreboard players add @a "总击杀数" 0
scoreboard players add @a "总胜利数" 0
scoreboard players add @a "总游戏数" 0