 execute @s[l=199] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §c您没有足够的经验" } ] }
 execute @s[l=199] ~~~ playsound mob.endermen.portal @s
 execute @s[lm=200] ~~~ tag @s add give_road_egg
 execute @s[lm=200] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §a您购买了 §r§6搭桥蛋" } ] }
 execute @s[lm=200] ~~~ playsound note.pling @s ~~~
 execute @s[lm=200] ~~~ xp -200L @s