 execute @s[l=49] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §c您没有足够的经验" } ] }
 execute @s[l=49] ~~~ playsound mob.endermen.portal @s
 execute @s[scores={"镐等级"=..3},lm=50] ~~~ tag @s add up_pickaxe
 execute @s[scores={"镐等级"=..3},lm=50] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §a您升级了 §r§6镐" } ] }
 execute @s[scores={"镐等级"=..3},lm=50] ~~~ playsound note.pling @s ~~~
 execute @s[scores={"镐等级"=..3},lm=50] ~~~ xp -50L @s