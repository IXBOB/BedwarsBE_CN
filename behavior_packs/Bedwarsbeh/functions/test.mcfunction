scoreboard objectives remove 游戏显示
scoreboard objectives remove 等待显示
scoreboard objectives add 显示 dummy text.scoreboard.others.display
scoreboard objectives setdisplay sidebar 显示
scoreboard objectives add in_lobby dummy
scoreboard objectives remove fangyuta_team
scoreboard objectives add popup_tower_team dummy
scoreboard objectives add 商已重置 dummy
scoreboard objectives add dev_mode dummy
scoreboard players set @e[name=main] 商已重置 0
scoreboard players set @e[name=main] dev_mode 1
scoreboard objectives remove own_xp
scoreboard objectives add own_level dummy
scoreboard objectives remove 红已重置
scoreboard objectives remove 蓝已重置
scoreboard objectives remove 黄已重置
scoreboard objectives remove 绿已重置
scoreboard objectives add 基已重置 dummy
scoreboard players set @e[type=armor_stand,name=main] "基已重置" 0
scoreboard objectives remove own_level
scoreboard objectives add own_xp dummy