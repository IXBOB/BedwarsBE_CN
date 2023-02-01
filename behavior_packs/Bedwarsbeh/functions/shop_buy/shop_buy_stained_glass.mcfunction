 execute @s[l=19] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §c您没有足够的经验" } ] }
 execute @s[l=19] ~~~ playsound mob.endermen.portal @s
 execute @s[scores={分队=1},lm=20] ~~~ tag @s add give_red_glass
 execute @s[scores={分队=2},lm=20] ~~~ tag @s add give_blue_glass
 execute @s[lm=20] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §a您购买了 §r§6防爆玻璃 x4" } ] }
 execute @s[lm=20] ~~~ playsound note.pling @s ~~~
 execute @s[lm=20] ~~~ xp -20L @s