execute @a[tag=op,tag=command.help.1] ~~~ tellraw @s { "rawtext" : [ { "text" : "§a§l显示指令帮助第 1/2 页\n输入 /tag @s add command.help.<数字> 前往指定页面\n§r§f/tag <玩家> add op\n/tag <玩家> remove op\n/tag @s add set.start.players.<数字>"} ] }
execute @a[tag=op,tag=command.help.1] ~~~ tag @s remove command.help.1