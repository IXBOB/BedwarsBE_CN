#tag+sound20
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0},tag=!sound20] ~~~ tag @s add sound20
#tag+sound15
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0},tag=!sound15] ~~~ tag @s add sound15
#tag+sound10
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0},tag=!sound10] ~~~ tag @s add sound10
#tag+sound5
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0},tag=!sound5] ~~~ tag @s add sound5
#tag+sound4
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0},tag=!sound4] ~~~ tag @s add sound4
#tag+sound3
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0},tag=!sound3] ~~~ tag @s add sound3
#tag+sound2
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0},tag=!sound2] ~~~ tag @s add sound2
#tag+sound1
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0},tag=!sound1] ~~~ tag @s add sound1
#设置倒计时时间
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0}] ~~~ scoreboard players set @s "开始倒计时" 20
#gameSTART=0删除僵尸猪人
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ kill @e[type=minecraft:zombie_pigman]
#重置地图
execute @e[type=armor_stand,name=main,scores={gameSTART=0}] ~~~ function reset_map
#游戏未开始传送游戏区玩家到大厅
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ execute @a[x=-63,y=92,z=-63,dx=126,dy=112,dz=126] ~~~ effect @s clear
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ execute @a[x=-63,y=92,z=-63,dx=126,dy=112,dz=126] ~~~ tp @s -200 200 -200
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ execute @a[x=-63,y=92,z=-63,dx=126,dy=112,dz=126] ~~~ xp -99999L @s
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ execute @a[x=-63,y=92,z=-63,dx=127,dy=112,dz=127] ~~~ clear @s
#游戏未开始时删除僵尸猪人
execute @e[type=armor_stand,scores={gameSTART=0},name=main] ~~~ execute @e[type=zombie_pigman] ~~~ detect ~ ~-1 ~ barrier 0 tp @s 0 -100 0
#gamestart=0,复制告示牌游戏未开始
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ clone 293 4 296 293 4 296 -200 200 -204
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ setblock -200 201 -205 air
#游戏重置前复制地图选择告示牌
execute @e[type=armor_stand,name=main,scores={gameSTART=0,"地图选择"=0,starting=0,reseting=0},tag=!reset_OK] ~~~ clone 293 4 294 293 4 294 -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=0,"地图选择"=1,starting=0,reseting=0},tag=!reset_OK] ~~~ clone 293 5 294 293 5 294 -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=0,"地图选择"=2,starting=0,reseting=0},tag=!reset_OK] ~~~ clone 293 6 294 293 6 294 -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=0,"地图选择"=3,starting=0,reseting=0},tag=!reset_OK] ~~~ clone 293 7 294 293 7 294 -203 200 -197
#重置结束后后复制地图选择告示牌
execute @e[type=armor_stand,name=main,scores={gameSTART=0,reseting=1,"游戏地图"=1,function_tick=20}] ~~~ clone 291 4 294 291 4 294 -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=0,reseting=1,"游戏地图"=2,function_tick=20}] ~~~ clone 291 5 294 291 5 294 -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=0,reseting=1,"游戏地图"=3,function_tick=20}] ~~~ clone 291 6 294 291 6 294 -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=1,"游戏地图"=1,function_tick=20}] ~~~ clone 291 4 294 291 4 294 -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=1,"游戏地图"=2,function_tick=20}] ~~~ clone 291 5 294 291 5 294 -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=1,"游戏地图"=3,function_tick=20}] ~~~ clone 291 6 294 291 6 294 -203 200 -197
execute @e[type=armor_stand,name=main,tag=reset_OK,scores={gameSTART=0,starting=0,"游戏地图"=1,function_tick=20}] ~~~ clone 291 4 294 291 4 294 -203 200 -197
execute @e[type=armor_stand,name=main,tag=reset_OK,scores={gameSTART=0,starting=0,"游戏地图"=2,function_tick=20}] ~~~ clone 291 5 294 291 5 294 -203 200 -197
execute @e[type=armor_stand,name=main,tag=reset_OK,scores={gameSTART=0,starting=0,"游戏地图"=3,function_tick=20}] ~~~ clone 291 6 294 291 6 294 -203 200 -197
#检测按下按钮更换模式
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0,reseting=0},tag=!reset_OK] ~~~ execute @e[type=player,x=-202,y=201,z=-196,r=3,c=1] ~~~ detect -202 201 -196 polished_blackstone_button 9 execute @s[tag=op] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=0}] ~~~ scoreboard players add @s "游戏模式" 1
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0,reseting=0},tag=!reset_OK] ~~~ execute @e[type=player,x=-202,y=201,z=-196,r=3,c=1] ~~~ detect -202 201 -196 polished_blackstone_button 9 execute @s[tag=!op] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 >> §c您没有权限修改地图， 请确保您拥有名为op的tag" } ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=0,"游戏模式"=3..,starting=0,reseting=0},tag=!reset_OK] ~~~ execute @e[type=player,x=-202,y=201,z=-196,r=3,c=1] ~~~ detect -202 201 -196 polished_blackstone_button 9 execute @s[tag=op] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=0,"游戏模式"=3..,starting=0,reseting=0}] "游戏模式" 1
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0,reseting=0},tag=!reset_OK] ~~~ execute @e[type=player,x=-202,y=201,z=-196,r=3,c=1] ~~~ detect -202 201 -196 polished_blackstone_button 9 execute @s[tag=op] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 >> §6§l游戏模式已被更改为 §d" },{"translate":"%%2","with":{"rawtext":[{"selector":"@e[type=armor_stand,name=main,scores={游戏模式=2}]"},{"text":"§o疾速模式"},{"text":"§r§l§d普通模式"}]}} ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0,reseting=0},tag=!reset_OK] ~~~ detect -202 201 -196 polished_blackstone_button 9 setblock -202 201 -196 polished_blackstone_button 1
#游戏开始前复制游戏模式告示牌
execute @e[type=armor_stand,name=main,scores={gameSTART=0,"游戏模式"=2,starting=0,reseting=0},tag=!reset_OK] ~~~ clone 289 5 294 289 5 294 -202 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=0,"游戏模式"=1,starting=0,reseting=0},tag=!reset_OK] ~~~ clone 289 4 294 289 4 294 -202 200 -197
#给予tag并调整人数
execute @e[type=armor_stand,name=main,scores={gameSTART=0}] ~~~ function change_start_player_count
#检测人数
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ execute @e[type=player] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=0},tag=reset_OK] "大厅人数" 2
execute @e[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players operation @a "大厅人数" = @s "大厅人数"
execute @e[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players operation @a "开始倒计时" = @s "开始倒计时"
#游戏结束时大厅actionbar
execute @e[type=armor_stand,scores={gameSTART=0,starting=0..1},tag=reset_OK] ~~~ execute @a ~~~ titleraw @s actionbar { "rawtext" : [ { "text" : "§r§f等级: §b§l" },{ "score" : { "name" : "@s" , "objective" : "等级"}},{ "text" : "    §r§f经验: §b§l" },{ "score" : { "name" : "@s" , "objective" : "等级经验"}},{ "text" : "§b / 1000\n" },{ "text" : "§r§f硬币: §e§l" },{ "score" : { "name" : "@s" , "objective" : "硬币数"}},{ "text" : "\n§r§f总击杀数: §e§l" },{ "score" : { "name" : "@s" , "objective" : "总击杀数"}},{ "text" : "\n§r§f总胜利数: §e§l" },{ "score" : { "name" : "@s" , "objective" : "胜场数"}},{ "text" : "   §r§f总游戏数: §e§l" },{ "score" : { "name" : "@s" , "objective" : "总游戏数"}} ] }
#等待玩家时设置等待显示计分板
execute @e[type=armor_stand,name=main,scores={gameSTART=0,function_tick=20}] ~~~ function set_gameSTART0_waiting_scoreboard
#删除玩家观战tag
execute @e[type=armor_stand,name=main,scores={gameSTART=0,function_tick=20}] ~~~ tag * remove from_lobby_spectator
#设置计分板游戏倒计时
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,function_tick=20,"开始倒计时"=0..20},tag=reset_OK] ~~~ function refresh_starting_scoreboard
execute @e[type=armor_stand,scores={gameSTART=0,starting=0..1},tag=reset_OK] ~~~ scoreboard players reset 正在重置地图... "等待显示"
#设置starting值
execute @e[type=armor_stand,name=main,scores={gameSTART=0}] ~~~ function set.game.starting
#传送结束时有分队值的玩家到大厅并清空背包
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ tp @a[scores={"分队"=1..2},tag=!insider] -200 200 -200
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ scoreboard players set @a[scores={"分队"=1..2}] "分队" 0
#检测按下按钮更换地图
execute @e[type=armor_stand,scores={gameSTART=0,reseting=0,starting=0},tag=!reset_OK] ~~~ detect -203 201 -196 polished_blackstone_button 9 function button_change_map
#游戏未开始tag-team
execute @e[type=armor_stand,name=main,scores={gameSTART=0}] ~~~ tag @a remove team1
execute @e[type=armor_stand,name=main,scores={gameSTART=0}] ~~~ tag @a remove team2 