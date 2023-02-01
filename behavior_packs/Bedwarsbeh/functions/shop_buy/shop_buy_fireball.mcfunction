 execute @s[l=79] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §c您没有足够的经验" } ] }
 execute @s[l=79] ~~~ playsound mob.endermen.portal @s
 execute @s[lm=80] ~~~ tag @s add give_fireball
 execute @s[lm=80] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §a您购买了 §r§6火焰弹" } ] }
 execute @s[lm=80] ~~~ playsound note.pling @s ~~~
 execute @s[lm=80] ~~~ xp -80L @s