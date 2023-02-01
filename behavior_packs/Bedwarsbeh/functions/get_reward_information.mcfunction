tellraw @a[scores={"分队"=1..2}] { "rawtext" : [ { "text" : "§a§l▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀" } ] }
tellraw @a[scores={"分队"=1..2}] { "rawtext" : [ { "text" : "§l                   奖励总览       \n §r§7您获得了 \n" } ] }
execute @a[scores={"分队"=1..2}] ~~~ tellraw @s { "rawtext" : [ { "text" : "§3   " },{ "score" : { "name" : "@s" , "objective" : "当局经验"}},{ "text" : " 起床战争经验" } ] }
execute @a[scores={"分队"=1..2}] ~~~ tellraw @s { "rawtext" : [ { "text" : "§6   " },{ "score" : { "name" : "@s" , "objective" : "当局硬币"}},{ "text" : " 起床战争硬币" } ] }
tellraw @a[scores={"分队"=1..2}] { "rawtext" : [ { "text" : "\n§a§l▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀" } ] }