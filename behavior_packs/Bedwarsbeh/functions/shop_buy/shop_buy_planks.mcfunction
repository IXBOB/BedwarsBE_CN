 execute @s[l=35] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §c您没有足够的经验" } ] }
 execute @s[l=35] ~~~ playsound mob.endermen.portal @s
 execute @s[lm=36] ~~~ tag @s add give_planks
 execute @s[lm=36] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §a您购买了 §r§6木板 x16" } ] }
 execute @s[lm=36] ~~~ playsound note.pling @s ~~~
 execute @s[lm=36] ~~~ xp -36L @s