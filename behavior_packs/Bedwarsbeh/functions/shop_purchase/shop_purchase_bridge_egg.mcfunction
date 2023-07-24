tag @s add give_bridge_egg
tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_bridge_egg"} ] }
playsound note.pling @s ~~~
scoreboard players add @s own_xp -200
xp -200L @s
execute @s[tag=give_bridge_egg] ~~~ function shop_purchase/give_items/give_bridge_egg