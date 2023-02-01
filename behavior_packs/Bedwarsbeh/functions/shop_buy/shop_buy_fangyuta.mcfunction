execute @s[l=99] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §c您没有足够的经验" } ] }
execute @s[l=99] ~~~ playsound mob.endermen.portal @s
execute @s[lm=100,scores={分队=1}] ~~~ tag @s add give_red_fangyuta
execute @s[lm=100,scores={分队=2}] ~~~ tag @s add give_blue_fangyuta
execute @s[lm=100] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §a您购买了 §r§6紧凑型速建防御塔" } ] }
execute @s[lm=100] ~~~ playsound note.pling @s ~~~
execute @s[lm=100] ~~~ xp -100L @s