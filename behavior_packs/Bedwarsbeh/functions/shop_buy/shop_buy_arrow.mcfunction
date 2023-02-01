 execute @s[l=29] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §c您没有足够的经验" } ] }
 execute @s[l=29] ~~~ playsound mob.endermen.portal @s
 execute @s[lm=30] ~~~ tag @s add give_arrow
 execute @s[lm=30] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §a您购买了 §r§6箭 x8" } ] }
 execute @s[lm=30] ~~~ playsound note.pling @s ~~~
 execute @s[lm=30] ~~~ xp -30L @s