#gamerule相关================
#游戏没开始关闭掉落伤害
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ gamerule falldamage false
#游戏开始打开掉落伤害
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ gamerule falldamage true
#游戏结算关闭掉落伤害
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ gamerule falldamage true
#pvp false
execute @e[type=armor_stand,name=main,scores={gameSTART=!1}] ~~~ gamerule pvp false
#pvp true
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ gamerule pvp true
#设置游戏规则
execute @e[type=armor_stand,name=main,scores={function_tick=20}] ~~~ function set_gamerule
#打开启用命令方块
gamerule commandblocksenabled true
#gamerule相关结束================
#游戏开始初始化
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=-1}] ~~~ function gamestart_reset_game_settings
#游戏开始玩家头顶显示血量
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard objectives setdisplay belowname health
#物品白名单
#ZH-CN
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ kill @e[type=item,ry=0,rym=0,rx=0,rxm=0,name=!"橡木木板",name=!"红色羊毛",name=!"蓝色羊毛",name=!"末地石",name=!"红色染色玻璃",name=!"蓝色染色玻璃",name=!"炸药",name=!"Iron Ingot",name=!"Gold Ingot",name=!"Emerald",name=!"Diamond",name=!"末影珍珠",name=!"黑曜石"]
#红床存在将红非挂机玩家存活设1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红床存活"=1}] ~~~ scoreboard players set @a[scores={"分队"=1}] "存活" 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红床存活"=1}] ~~~ scoreboard players set @e[type=player,scores={"分队"=1}] "存活" 1
#蓝床存在将蓝非挂机玩家存活设1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝床存活"=1}] ~~~ scoreboard players set @a[scores={"分队"=2}] "存活" 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝床存活"=1}] ~~~ scoreboard players set @e[type=player,scores={"分队"=2}] "存活" 1
#删除盔甲架主手物品
replaceitem entity @e[type=armor_stand] slot.weapon.mainhand 0 air
#火焰弹相关================
#游戏未开始时删除火焰弹（雪球）
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ execute @e[type=snowball] ~~~ kill @s
#火焰弹（雪球）出界删除
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @e[type=snowball] ~ ~ ~ detect ~ 0 ~ deny 0 particle minecraft:dragon_death_explosion_emitter ~~~
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @e[type=snowball] ~ ~ ~ detect ~ 0 ~ deny 0 kill @s
#火焰弹相关结束================
#更改游戏模式
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ gamemode 0 @a[x=-63,y=90,z=-63,dx=126,dy=114,dz=126,scores={"分队"=1..2,respawning=0},tag=!insider]
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[x=-63,y=205,z=-63,dx=126,dy=10,dz=126,tag=!insider] ~~~ detect ~ ~-1 ~ barrier 0 gamemode 2 @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ gamemode 2 @a[x=-218,y=193,z=-218,dx=36,dy=50,dz=40,tag=!insider]
execute @e[type=armor_stand,name=main,scores={gameSTART=2}] ~~~ gamemode 2 @a[tag=!insider]
execute @e[type=armor_stand,name=main,scores={gameSTART=0}] ~~~ gamemode 2 @a[tag=!insider]
#删除出界的箭
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @e[type=arrow] ~ ~ ~ detect ~ 0 ~ deny 0 kill @s
#删除出界的末影珍珠
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ execute @e[type=ender_pearl] ~~~ detect ~ 0 ~ deny 0 kill @s
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ execute @e[type=ender_pearl,x=-63,y=90,z=-63,dx=127,dy=83,dz=127] ~~~ kill @s
#红队队伍actionbar
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={"分队"=1},x=-63,y=90,z=-63,dx=126,dy=114,dz=126] ~~~ titleraw @s actionbar { "rawtext" : [{ "text" : "§f队伍:  §c§l红队\n§r§f队伍成员:  §c§l" },{ "selector" :  "@a[scores={分队=1,存活=1}]"},{ "text" : "\n§r§7游戏时间:  " },{ "score" : { "name" : "@s" , "objective" : "game.time.min.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.min.1"}},{ "text" : " : " },{ "score" : { "name" : "@s" , "objective" : "game.time.sec.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.sec.1"}},{"translate":"%%5%%6%%7%%8","with":{"rawtext":[{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"text":"\n§r§e钻石生成点等级: "},{ "score" : { "name" : "@s" , "objective" : "钻石等级"}},{"text":"     下一个钻石: "},{ "score" : { "name" : "@s" , "objective" : "钻石time"}}]}},{"translate":"%%5%%6%%7%%8","with":{"rawtext":[{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"text":"\n§r§e绿宝石生成点等级: "},{ "score" : { "name" : "@s" , "objective" : "绿宝石等级"}},{"text":"     下一个绿宝石: "},{ "score" : { "name" : "@s" , "objective" : "绿宝石time"}},{"text":"\n§r§7击杀数: "},{"score":{"name":"@s","objective":"击杀数"}}]}}]}
#蓝队队伍actionbar
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={"分队"=2},x=-63,y=90,z=-63,dx=126,dy=114,dz=126] ~~~ titleraw @s actionbar { "rawtext" : [{ "text" : "§f队伍:  §b§l蓝队\n§r§f队伍成员:  §b§l" },{ "selector" :  "@a[scores={分队=2,存活=1}]"},{ "text" : "\n§r§7游戏时间:  " },{ "score" : { "name" : "@s" , "objective" : "game.time.min.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.min.1"}},{ "text" : " : " },{ "score" : { "name" : "@s" , "objective" : "game.time.sec.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.sec.1"}},{"translate":"%%5%%6%%7%%8","with":{"rawtext":[{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"text":"\n§r§e钻石生成点等级: "},{ "score" : { "name" : "@s" , "objective" : "钻石等级"}},{"text":"     下一个钻石: "},{ "score" : { "name" : "@s" , "objective" : "钻石time"}}]}},{"translate":"%%5%%6%%7%%8","with":{"rawtext":[{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"text":"\n§r§e绿宝石生成点等级: "},{ "score" : { "name" : "@s" , "objective" : "绿宝石等级"}},{"text":"     下一个绿宝石: "},{ "score" : { "name" : "@s" , "objective" : "绿宝石time"}},{"text":"\n§r§7击杀数: "},{"score":{"name":"@s","objective":"击杀数"}}]}}]}
#淘汰后玩家actionbar
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=0},m=spectator] ~~~ titleraw @s actionbar { "rawtext" : [{ "text" : "§f§l>> 您现在是一名旁观者 <<" },{ "text" : "\n§r§7游戏时间:  " },{ "score" : { "name" : "@s" , "objective" : "game.time.min.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.min.1"}},{ "text" : " : " },{ "score" : { "name" : "@s" , "objective" : "game.time.sec.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.sec.1"}},{ "text" : "\n§r§c§l红队剩余玩家: " },{"selector":"@a[scores={分队=1,存活=1}]"},{ "text" : "\n§r§b§l蓝队剩余玩家: " },{"selector":"@a[scores={分队=2,存活=1}]"},{ "text" : "\n§f>> 抬头以返回大厅 <<" } ] }
#clear红队淘汰玩家
execute @e[type=armor_stand,scores={gameSTART=1..2,"红床存活"=0}] ~~~ execute @a[scores={"存活"=0,"分队"=1}] ~~~ clear @s
#clear蓝队淘汰玩家
execute @e[type=armor_stand,scores={gameSTART=1..2,"红床存活"=0}] ~~~ execute @a[scores={"存活"=0,"分队"=1}] ~~~ clear @s
#删除屏障上的僵尸猪人
execute @e[type=armor_stand,scores={gameSTART=1..2},name=main] ~~~ execute @e[type=zombie_pigman] ~~~ detect ~ ~-1 ~ barrier 0 tp @s 0 -100 0
#删除屏障上的掉落物
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=item] ~~~ detect ~ ~-1 ~ barrier 0 kill @s
#大厅跳到结构空位TP出生点
execute @a[x=-200,y=180,z=-200,r=50] ~~~ detect ~ ~ ~ structure_void 0 tp @s -200 200 -200
#胜利烟花
execute @e[type=armor_stand,scores={gameSTART=2,function_tick=10}] ~~~ execute @a[scores={firework=1}] ~~~ summon minecraft:fireworks_rocket
execute @e[type=armor_stand,scores={gameSTART=2,function_tick=20}] ~~~ execute @a[scores={firework=1}] ~~~ summon minecraft:fireworks_rocket
#红床存在设置able_to_respawn红并设置重生点
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红床存活"=1}] ~~~ scoreboard players set @a[scores={"分队"=1}] able_to_respawn 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红床存活"=1}] ~~~ spawnpoint @a[scores={"分队"=1}] 0 210 0
#蓝床存在设置able_to_respawn蓝并设置重生点
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝床存活"=1}] ~~~ scoreboard players set @a[scores={"分队"=2}] able_to_respawn 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝床存活"=1}] ~~~ spawnpoint @a[scores={"分队"=2}] 0 210 0
#传送大厅有红分队玩家至相应基地
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ execute @a[x=-218,y=193,z=-218,dx=36,dy=50,dz=40,scores={"分队"=1,"存活"=1}] ~~~ tp @s 0 186 53
#传送大厅有蓝分队玩家至相应基地
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ execute @a[x=-218,y=193,z=-218,dx=36,dy=50,dz=40,scores={"分队"=2,"存活"=1}] ~~~ tp @s 0 186 -53
#所有玩家饱和
effect @a saturation 2 255 true
#开始游戏后大厅玩家虚弱
execute @e[type=armor_stand,scores={gameSTART=1..2}] ~~~ effect @a[x=-218,y=193,z=-218,r=50] weakness 2 255 true
#开始游戏后大厅玩家抗性提升
execute @e[type=armor_stand,scores={gameSTART=1..2}] ~~~ effect @a[x=-218,y=193,z=-218,r=50] resistance 2 255 true
#游戏开始后还原被破坏的红队伍箱
execute @e[type=armor_stand,scores={gameSTART=1..2}] ~~~ detect 0 185 58 air 0 clone 288 7 260 288 7 260 0 185 58
#游戏开始后还原被破坏的蓝队伍箱
execute @e[type=armor_stand,scores={gameSTART=1..2}] ~~~ detect 0 185 -58 air 0 clone 288 7 259 288 7 259 0 185 -58
#<红> 检测有敌人可以破坏床
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard players set @s "红床有敌" 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=2},x=0,y=185,z=46,r=7] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=1}] "红床有敌" 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红床有敌"=0,"红床存活"=1}] ~~~ clone 0 9 47 0 9 46 0 185 46
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红床有敌"=1,"红床存活"=1}] ~~~ function destroy_red_bed
#<蓝> 检测有敌人可以破坏床
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard players set @s "蓝床有敌" 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=1},x=0,y=185,z=-46,r=7] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=1}] "蓝床有敌" 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝床有敌"=0,"蓝床存活"=1}] ~~~ clone 0 9 -46 0 9 -47 0 185 -47
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝床有敌"=1,"蓝床存活"=1}] ~~~ function destroy_blue_bed
#床被摧毁设置able_to_respawn红并设置重生点
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红床存活"=0}] ~~~ scoreboard players set @a[scores={"分队"=1}] able_to_respawn 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红床存活"=0}] ~~~ spawnpoint @a[scores={"分队"=1}] 0 210 0
#床被摧毁设置able_to_respawn蓝并设置重生点
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝床存活"=0}] ~~~ scoreboard players set @a[scores={"分队"=2}] able_to_respawn 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝床存活"=0}] ~~~ spawnpoint @a[scores={"分队"=2}] 0 210 0
#gameSTART为0时执行命令
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ function gameSTART0_functions
#gameSTART为2时执行命令
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ function gameSTART2_functions
#给掉入虚空的玩家添加kill tag
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[x=-63,y=88,z=-63,dx=126,dy=4,dz=126,scores={"分队"=1..2}] ~~~ detect ~ ~ ~ structure_void 0 tag @s add in_void_kill
#删除掉入虚空的玩家
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[x=-63,y=88,z=-63,dx=126,dy=4,dz=126,scores={"分队"=1..2}] ~~~ detect ~ ~ ~ structure_void 0 kill @s
#增加游戏时间
execute @e[type=armor_stand,scores={gameSTART=1,function_tick=20}] ~~~ scoreboard players add @s game.time.sec.1 1
execute @e[type=armor_stand,scores={gameSTART=1,game.time.sec.1=10..}] ~~~ scoreboard players add @s game.time.sec.2 1
execute @e[type=armor_stand,scores={gameSTART=1,game.time.sec.1=10..}] ~~~ scoreboard players set @s game.time.sec.1 0
execute @e[type=armor_stand,scores={gameSTART=1,game.time.sec.2=6..}] ~~~ scoreboard players add @s game.time.min.1 1
execute @e[type=armor_stand,scores={gameSTART=1,game.time.sec.2=6..}] ~~~ scoreboard players set @s game.time.sec.2 0
execute @e[type=armor_stand,scores={gameSTART=1,game.time.min.1=10..}] ~~~ scoreboard players add @s game.time.min.2 1
execute @e[type=armor_stand,scores={gameSTART=1,game.time.min.1=10..}] ~~~ scoreboard players set @s game.time.min.1 0
#初始化新玩家
execute @a[tag=!registered] ~~~ function player_register

#设置near_diamond
#设置near_emerald
#复制计分板数值给玩家
#无敌时间
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ function gameSTART1_functions
#复制gameSTART给玩家
scoreboard players operation @a gameSTART = @e[type=armor_stand,name=main] gameSTART

#抬头相关功能================
#观战玩家抬头返回
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,scores={able_to_respawn=0},m=spectator] ~~~ scoreboard players reset @s "抬头返回time"
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,m=!spectator,scores={able_to_respawn=!0,"分队"=1..2,"存活"=1}] ~~~ scoreboard players reset @s "抬头返回time"
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,scores={able_to_respawn=0},m=spectator] ~~~ scoreboard players add @s "抬头返回time" -1
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,m=spectator,scores={"抬头返回time"=..-130,able_to_respawn=0}] ~~~ gamemode adventure @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,m=spectator,scores={"抬头返回time"=..-130,able_to_respawn=0}] ~~~ tag @s remove from_lobby_spectator
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,m=spectator,scores={"抬头返回time"=..-130,able_to_respawn=0}] ~~~ tp @s -200 200 -200 0 0
#抬头返回title
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,m=spectator,scores={"抬头返回time"=-30..-10,able_to_respawn=0}] ~~~ title @s actionbar §e■■■■■ Teleport to the lobby in 5 seconds ■■■■■
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,m=spectator,scores={"抬头返回time"=-50..-31,able_to_respawn=0}] ~~~ title @s actionbar §7■§e■■■■ Teleport to the lobby in 4 seconds ■■■■§7■
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,m=spectator,scores={"抬头返回time"=-70..-51,able_to_respawn=0}] ~~~ title @s actionbar §7■■§e■■■ Teleport to the lobby in 3 seconds ■■■§7■■
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,m=spectator,scores={"抬头返回time"=-90..-71,able_to_respawn=0}] ~~~ title @s actionbar §7■■■§e■■ Teleport to the lobby in 2 seconds ■■§7■■■
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,m=spectator,scores={"抬头返回time"=-110..-91,able_to_respawn=0}] ~~~ title @s actionbar §7■■■■§e■ Teleport to the lobby in 1 second ■§7■■■■
#抬头相关功能结束================
#游戏开始设置生存模式
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ gamemode 0 @a[scores={"分队"=1..2},x=0,y=184,z=52,r=10,m=2]
#游戏开始设置生存模式
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ gamemode 0 @a[scores={"分队"=1..2},x=0,y=184,z=-52,r=10,m=2]
#红队tag+team1
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ tag @a[scores={"分队"=1}] add team1
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ tag @a[scores={"分队"=1}] remove team2
#蓝队tag+team2
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ tag @a[scores={"分队"=2}] add team2
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ tag @a[scores={"分队"=2}] remove team1
#检测有人正在重生执行相关指令
execute @e[type=player,scores={respawning=1},x=0,y=200,z=0,c=1] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ function respawn/respawn_main
#此处一部分指令在gameSTART0_functions，别问我为什么这么乱，一切为游戏性能考虑
#replaceitem红队皮革护甲
execute @e[type=armor_stand,scores={gameSTART=1,"红保护等级"=0},name=main] ~~~ execute @a[x=-63,y=176,z=-63,dx=126,dy=28,dz=126,scores={"分队"=1,"防具等级"=1,"存活"=1}] ~~~ function replaceitem.red.leather.armor
#replaceitem蓝队皮革护甲
 execute @e[type=armor_stand,scores={gameSTART=1,"蓝保护等级"=0},name=main] ~~~ execute @a[x=-63,y=176,z=-63,dx=126,dy=28,dz=126,scores={"分队"=2,"防具等级"=1,"存活"=1}] ~~~ function replaceitem.blue.leather.armor
#复制告示牌游戏已开始
execute @e[type=armor_stand,scores={gameSTART=1,function_tick=20}] ~~~ clone 293 5 296 293 5 296 -200 200 -204
execute @e[type=armor_stand,scores={gameSTART=1,function_tick=20}] ~~~ setblock -200 201 -205 polished_blackstone_button 1
#检测游戏开始时按钮被按下并重置按钮(观战)
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ detect -200 201 -205 polished_blackstone_button 9 gamemode 6 @e[type=player,x=-200,y=201,z=-205,r=3,c=1]
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ detect -200 201 -205 polished_blackstone_button 9 tag @e[type=player,x=-200,y=201,z=-205,r=3,c=1] add from_lobby_spectator
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ detect -200 201 -205 polished_blackstone_button 9 tp @e[type=player,x=-200,y=201,z=-205,r=3,c=1] 0 206 0
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ detect -200 201 -205 polished_blackstone_button 9 setblock -200 201 -205 polished_blackstone_button 1
#重置结束后后复制地图选择告示牌
#此处一部分指令在gameSTART0_functions，别问我为什么这么乱，一切为游戏性能考虑
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"游戏地图"=1,function_tick=20}] ~~~ clone 291 4 294 291 4 294 -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"游戏地图"=2,function_tick=20}] ~~~ clone 291 5 294 291 5 294 -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"游戏地图"=3,function_tick=20}] ~~~ clone 291 6 294 291 6 294 -203 200 -197
#重置结束后后复制游戏模式告示牌
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"游戏模式"=1}] ~~~ clone 288 4 294 288 4 294 -202 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"游戏模式"=2}] ~~~ clone 288 5 294 288 5 294 -202 200 -197
execute @e[type=armor_stand,name=main,scores={reseting=1,"游戏模式"=1}] ~~~ clone 288 4 294 288 4 294 -202 200 -197
execute @e[type=armor_stand,name=main,scores={reseting=1,"游戏模式"=2}] ~~~ clone 288 5 294 288 5 294 -202 200 -197
execute @e[type=armor_stand,name=main,scores={starting=1,"游戏模式"=1}] ~~~ clone 288 4 294 288 4 294 -202 200 -197
execute @e[type=armor_stand,name=main,scores={starting=1,"游戏模式"=2}] ~~~ clone 288 5 294 288 5 294 -202 200 -197
execute @e[type=armor_stand,name=main,tag=reset_OK,scores={"游戏模式"=1}] ~~~ clone 288 4 294 288 4 294 -202 200 -197
execute @e[type=armor_stand,name=main,tag=reset_OK,scores={"游戏模式"=2}] ~~~ clone 288 5 294 288 5 294 -202 200 -197
#检测人数开始游戏相关================
#初始化重复检测大厅人数
scoreboard players reset * "大厅人数"
#检测人数开始游戏相关结束================
#开始游戏倒计时title
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0..20,function_tick=20},tag=reset_OK] ~~~ function startgame_timer
#玩家tag指令相关================
#玩家获取或被夺去tag=op时提示
execute @a[tag=op,tag=!get.op.tellrawed] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 >> §r§aYou have obtained OP permission. For help, enter /tag @s add command.help" } ] }
execute @a[tag=op,tag=!get.op.tellrawed] ~~~ tag @s[scores={分队=0,menu_page=1}] add refresh_menu1
execute @a[tag=op,tag=!get.op.tellrawed] ~~~ tag @s add get.op.tellrawed
execute @a[tag=!op,tag=get.op.tellrawed] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 >> §r§cYour administrator privileges have been taken away" } ] }
execute @a[tag=!op,tag=get.op.tellrawed] ~~~ tag @s[scores={分队=0,menu_page=1}] add refresh_menu1
execute @a[tag=!op,tag=get.op.tellrawed] ~~~ tag @s remove get.op.tellrawed
#玩家tag指令相关结束================
#防止地图关键区域被破坏
execute @e[type=armor_stand,scores={gameSTART=1..2,function_tick=20}] ~~~ function prevent_break_map_important_area
#游戏区域tag+degrade
execute @a[tag=!degrade] ~~~ execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @a[scores={"分队"=1..2},x=-63,y=171,z=-63,dx=126,dy=33,dz=126,m=0] ~~~ tag @s add degrade
#检测蓝队床情况#蓝队√-游戏显示
execute @e[type=armor_stand,scores={gameSTART=1,"蓝床存活"=1}] ~~~ scoreboard players set "§b蓝队 §a✔" "游戏显示" -5
execute @e[type=armor_stand,scores={gameSTART=1,"蓝床存活"=0}] ~~~ scoreboard players reset "§b蓝队 §a✔" "游戏显示"
#检测红队床情况#红队√-游戏显示
execute @e[type=armor_stand,scores={gameSTART=1,"红床存活"=1}] ~~~ scoreboard players set "§c红队 §a✔" "游戏显示" -4
execute @e[type=armor_stand,scores={gameSTART=1,"红床存活"=0}] ~~~ scoreboard players reset "§c红队 §a✔" "游戏显示"
#事件系统相关================
#事件开始初始化
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=0}] ~~~ scoreboard players set "§a绿宝石生成点 II 级" "游戏显示" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=0}] ~~~ scoreboard players set @s "显示事件" 1
#事件倒计时-1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=1..11,function_tick=20}] ~~~ scoreboard players add @s "事件倒计时" -1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=1,function_tick=20}] ~~~ scoreboard players add "§a绿宝石生成点 II 级" "游戏显示" -1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=2,function_tick=20}] ~~~ scoreboard players add "§b钻石生成点 II 级" "游戏显示" -1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=3,function_tick=20}] ~~~ scoreboard players add "§a绿宝石生成点 III 级" "游戏显示" -1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=4,function_tick=20}] ~~~ scoreboard players add "§b钻石生成点 III 级" "游戏显示" -1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=5,function_tick=20}] ~~~ scoreboard players add "§d生成黑曜石猪灵" "游戏显示" -1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,function_tick=20}] ~~~ scoreboard players add "§d生成末影珍珠猪灵" "游戏显示" -1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,function_tick=20}] ~~~ scoreboard players add "§4距床自毁 120 秒" "游戏显示" -1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,function_tick=20}] ~~~ scoreboard players add "§4§l床自毁" "游戏显示" -1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=9,function_tick=20}] ~~~ scoreboard players add "§4距平局 240 秒" "游戏显示" -1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=10,function_tick=20}] ~~~ scoreboard players add "§4距平局 120 秒" "游戏显示" -1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=11,function_tick=20}] ~~~ scoreboard players add "§4§l游戏平局并结束" "游戏显示" -1
#事件1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=1}] ~~~ function events/event_1
#事件2
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=1..2}] ~~~ function events/event_2
#事件3
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=2..3}] ~~~ function events/event_3
#事件4
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=3..4}] ~~~ function events/event_4
#事件5
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=4..5}] ~~~ function events/event_5
#事件6
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=5..6}] ~~~ function events/event_6
#事件7
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6..7}] ~~~ function events/event_7
#事件8
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7}] ~~~ function events/event_8
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8}] ~~~ function events/event_8
#事件9
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8}] ~~~ function events/event_9
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=9}] ~~~ function events/event_9
#事件10
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=9..10}] ~~~ function events/event_10
#平局
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=10..11}] ~~~ function events/event_draw
#事件相关结束================
#游戏开始时自动获取经验和硬币
execute @e[type=armor_stand,scores={gameSTART=1,function_tick=20,fc_tick_cycle=10}] ~~~ tag @a[scores={"分队"=1..2}] add get.xp.game
execute @e[type=armor_stand,scores={gameSTART=1,function_tick=20,fc_tick_cycle=10}] ~~~ tag @a[scores={"分队"=1..2}] add get.coin.game
execute @a[tag=get.xp.game] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ function get_xp_and_coin
#升级
execute @a[scores={"等级经验"=1000..}] ~~~ scoreboard players add @s "等级" 1
execute @a[scores={"等级经验"=1000..}] ~~~ tellraw @s {"rawtext":[{"text":"§6§l     ■■■■■ 起床战争等级提升 ■■■■■\n§r§6您的等级经验已满 1000 ， 已升级为等级 "},{ "score" : { "name" : "@s" , "objective" : "等级"}},{"text":" ！ 祝贺 ！"}]}
execute @a[scores={"等级经验"=1000..}] ~~~ scoreboard players operation @s "等级经验" -= @e[name=main] exp_lv_up_need
#重复复制蓝队商店
execute @e[type=armor_stand,name=main,scores={gameSTART=1,function_tick=20}] ~~~ clone 242 4 262 242 4 253 4 185 -57
execute @e[type=armor_stand,name=main,scores={gameSTART=1,function_tick=20}] ~~~ clone 273 4 260 273 4 251 -4 185 -57
#重复复制红队商店
execute @e[type=armor_stand,name=main,scores={gameSTART=1,function_tick=20}] ~~~ clone 239 4 262 239 4 253 -4 185 48
execute @e[type=armor_stand,name=main,scores={gameSTART=1,function_tick=20}] ~~~ clone 270 4 260 270 4 251 4 185 48
#复制蓝队团队升级告示牌
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=1,function_tick=20}] ~~~ clone 313 4 311 313 4 311 -4 185 -57
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=2,function_tick=20}] ~~~ clone 313 5 311 313 5 311 -4 185 -57
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=3,function_tick=20}] ~~~ clone 313 6 311 313 6 311 -4 185 -57
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝保护等级"=1,function_tick=20}] ~~~ clone 313 4 312 313 4 312 -4 185 -56
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝保护等级"=2,function_tick=20}] ~~~ clone 313 5 312 313 5 312 -4 185 -56
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝保护等级"=3,function_tick=20}] ~~~ clone 313 6 312 313 6 312 -4 185 -56
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝锋利等级"=1,function_tick=20}] ~~~ clone 313 4 313 313 4 313 -4 185 -55
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝锋利等级"=2,function_tick=20}] ~~~ clone 313 5 313 313 5 313 -4 185 -55
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝锋利等级"=3,function_tick=20}] ~~~ clone 313 6 313 313 6 313 -4 185 -55
#复制红队团队升级告示牌
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红陷阱等级"=1,function_tick=20}] ~~~ clone 310 4 313 310 4 313 4 185 57
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红陷阱等级"=2,function_tick=20}] ~~~ clone 310 5 313 310 5 313 4 185 57
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红陷阱等级"=3,function_tick=20}] ~~~ clone 310 6 313 310 6 313 4 185 57
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红保护等级"=1,function_tick=20}] ~~~ clone 310 4 312 310 4 312 4 185 56
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红保护等级"=2,function_tick=20}] ~~~ clone 310 5 312 310 5 312 4 185 56
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红保护等级"=3,function_tick=20}] ~~~ clone 310 6 312 310 6 312 4 185 56
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红锋利等级"=1,function_tick=20}] ~~~ clone 310 4 311 310 4 311 4 185 55
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红锋利等级"=2,function_tick=20}] ~~~ clone 310 5 311 310 5 311 4 185 55
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红锋利等级"=3,function_tick=20}] ~~~ clone 310 6 311 310 6 311 4 185 55
#will_get_XP
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=1..2,will_get_XP=1..}] ~~~ function will_get_XP
#删除背包内的铁锭，金锭，钻石，绿宝石
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ clear @a iron_ingot
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ clear @a gold_ingot
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ clear @a diamond
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ clear @a emerald

#检测装备升级
#检测搭桥蛋
#在function gameSTART1_functions内

#疾速模式速度I和急迫I
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,"游戏模式"=2}] ~~~ effect @a[scores={"分队"=1..2,"存活"=1}] speed 1 0 true
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,"游戏模式"=2}] ~~~ effect @a[scores={"分队"=1..2,"存活"=1}] haste 1 0 true
#大厅滚动字体
scoreboard players add @e[type=armor_stand,name=main] lobby_text_time -1
execute @e[type=armor_stand,name=main,scores={lobby_text_time=-1}] ~~~ tp @e[type=armor_stand,tag=text1] -197 198.2 -202
execute @e[type=armor_stand,name=main,scores={lobby_text_time=-41}] ~~~ tp @e[type=armor_stand,tag=text2] -197 198.2 -202
execute @e[type=armor_stand,name=main,scores={lobby_text_time=-81}] ~~~ tp @e[type=armor_stand,tag=text3] -197 198.2 -202
execute @e[type=armor_stand,name=main,scores={lobby_text_time=-121}] ~~~ tp @e[type=armor_stand,tag=text4] -197 198.2 -202
execute @e[type=armor_stand,name=main,scores={lobby_text_time=-161}] ~~~ tp @e[type=armor_stand,tag=text5] -197 198.2 -202
execute @e[type=armor_stand,name=main,scores={lobby_text_time=-201}] ~~~ tp @e[type=armor_stand,tag=text6] -197 198.2 -202
execute @e[type=armor_stand,name=main,scores={lobby_text_time=-241}] ~~~ tp @e[type=armor_stand,tag=text7] -197 198.2 -202
execute @e[type=armor_stand,name=main,scores={lobby_text_time=-281}] ~~~ tp @e[type=armor_stand,tag=text8] -197 198.2 -202
execute @e[type=armor_stand,name=main,scores={lobby_text_time=-321}] ~~~ tp @e[type=armor_stand,tag=text9] -197 198.2 -202
execute @e[type=armor_stand,name=main,scores={lobby_text_time=-361}] ~~~ tp @e[type=armor_stand,tag=text10] -197 198.2 -202
execute @e[type=armor_stand,name=main,scores={lobby_text_time=-401}] ~~~ tp @e[type=armor_stand,tag=text11] -197 198.2 -202
execute @e[type=armor_stand,name=main,scores={lobby_text_time=-441}] ~~~ tp @e[type=armor_stand,tag=text12] -197 198.2 -202
execute @e[type=armor_stand,x=-198,y=197,z=-203,dx=2,dy=6,dz=2] ~~~ tp @s ~ ~0.02 ~
execute @e[type=armor_stand,x=-197,y=202,z=-202,r=1] ~~~ tp @s -197 5 -202
execute @e[type=armor_stand,name=main,scores={lobby_text_time=..-480}] ~~~ scoreboard players set @s lobby_text_time 0
#检测触发陷阱
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红陷阱等级"=1..3}] ~~~ function team_red_TRIGGER
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=1..3}] ~~~ function team_blue_TRIGGER
#跑酷终点粒子效果
execute @e[type=armor_stand,name=main,scores={function_tick=20}] ~~~ particle minecraft:totem_particle -203 223 -192


#PARTICLE_menu
#menu_page1
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=1}] ~~~ function inventory_menu/menu_page/menu_page1
#menu_page2
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=2}] ~~~ function inventory_menu/menu_page/menu_page2
#menu_page3
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=3}] ~~~ function inventory_menu/menu_page/menu_page3

#change_to_menu1
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=change_to_menu1] ~~~ function inventory_menu/change_to_menu/change_to_menu1
#change_to_menu2
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=change_to_menu2] ~~~ function inventory_menu/change_to_menu/change_to_menu2
#change_to_menu3
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=change_to_menu3] ~~~ function inventory_menu/change_to_menu/change_to_menu3

#menu2-particle_buy_none
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=particle_buy_none] ~~~ function inventory_menu/menu2-particle_buy/menu2-particle_buy_none
#menu2-particle_buy_villagerhappy
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=particle_buy_villagerhappy] ~~~ function inventory_menu/menu2-particle_buy/menu2-particle_buy_villagerhappy
#menu2-particle_buy_fire
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=particle_buy_fire] ~~~ function inventory_menu/menu2-particle_buy/menu2-particle_buy_fire

#menu3-remove_start_players_required
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=remove_start_players_required] ~~~ function inventory_menu/menu3-change_start_players_required/remove_players
#menu3-add_start_players_required
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=add_start_players_required] ~~~ function inventory_menu/menu3-change_start_players_required/add_players

#非tag op玩家进入管理员菜单自动返回
execute @a[tag=!insider,scores={menu_page=3}] ~~~ tag @s add change_to_menu1

#refresh_menu1
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=1},tag=refresh_menu1] ~~~ function inventory_menu/refresh_menu/refresh_menu1
#refresh_menu2
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=2},tag=refresh_menu2] ~~~ function inventory_menu/refresh_menu/refresh_menu2
#refresh_menu3
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=3},tag=refresh_menu3] ~~~ function inventory_menu/refresh_menu/refresh_menu3
#粒子显示
execute @e[type=armor_stand,name=main,scores={function_tick=10}] ~~~ execute @e[type=player,scores={select_particle=1}] ~~~ particle minecraft:villager_happy ~ ~0.2 ~
execute @e[type=armor_stand,name=main,scores={function_tick=20}] ~~~ execute @e[type=player,scores={select_particle=1}] ~~~ particle minecraft:villager_happy ~ ~0.2 ~
execute @e[type=armor_stand,name=main,scores={function_tick=10}] ~~~ execute @e[type=player,scores={select_particle=2}] ~~~ particle minecraft:basic_flame_particle ~ ~0.2 ~
execute @e[type=armor_stand,name=main,scores={function_tick=20}] ~~~ execute @e[type=player,scores={select_particle=2}] ~~~ particle minecraft:basic_flame_particle ~ ~0.2 ~

#开始倒计时-1
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0..,function_tick=20},tag=reset_OK] ~~~ scoreboard players add @s "开始倒计时" -1
