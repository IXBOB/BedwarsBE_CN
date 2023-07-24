tag @s add give_bow
tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_bow"} ] }
playsound note.pling @s ~~~
scoreboard players add @s own_xp -200
xp -200L @s
execute @s[tag=give_bow] ~~~ function shop_purchase/give_items/give_bow