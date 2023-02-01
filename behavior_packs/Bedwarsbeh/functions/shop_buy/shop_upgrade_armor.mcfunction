 execute @s[l=99] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §c您没有足够的经验" } ] }
 execute @s[l=99] ~~~ playsound mob.endermen.portal @s
 execute @s[scores={"防具等级"=..3},lm=100] ~~~ tag @s add up_armor
 execute @s[scores={"防具等级"=..3},lm=100] ~~~ tellraw @s { "rawtext" : [ { "text" : "商店 >> §a您升级了 §r§6护甲" } ] }
 execute @s[scores={"防具等级"=..3},lm=100] ~~~ playsound note.pling @s ~~~
 execute @s[scores={"防具等级"=..3},lm=100] ~~~ xp -100L @s