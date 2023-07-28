#开始游戏后大厅玩家虚弱
effect @a[x=-218,y=193,z=-218,r=50] weakness 2 255 true
#开始游戏后大厅玩家抗性提升
effect @a[x=-218,y=193,z=-218,r=50] resistance 2 255 true

#游戏开始后还原被破坏的红队伍箱
execute @s ~~~ detect 0 185 58 air 0 structure load bedwars:red_team_chest 0 185 58
#游戏开始后还原被破坏的蓝队伍箱
execute @s ~~~ detect 0 185 -58 air 0 structure load bedwars:blue_team_chest 0 185 -58
#游戏开始后还原被破坏的黄队伍箱
execute @s ~~~ detect 58 185 0 air 0 structure load bedwars:yellow_team_chest 58 185 0
#游戏开始后还原被破坏的绿队伍箱
execute @s ~~~ detect -58 185 0 air 0 structure load bedwars:green_team_chest -58 185 0