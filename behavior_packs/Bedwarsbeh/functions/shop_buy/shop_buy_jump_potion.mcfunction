 execute @s[l=99] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §c您没有足够的经验" } ] }
 execute @s[l=99] ~~~ playsound mob.endermen.portal @s
 execute @s[lm=100] ~~~ tag @s add give_jump_potion
 execute @s[lm=100] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §a您购买了 §r§6跳跃药水V (30秒)" } ] }
 execute @s[lm=100] ~~~ playsound note.pling @s ~~~
 execute @s[lm=100] ~~~ xp -100L @s