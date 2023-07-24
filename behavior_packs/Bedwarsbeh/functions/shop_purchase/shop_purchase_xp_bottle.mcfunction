tag @s add give_xp_bottle
tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_xp_bottle"} ] }
playsound note.pling @s ~~~
scoreboard players add @s own_xp -100
xp -100L @s
execute @s[tag=give_xp_bottle] ~~~ function shop_purchase/give_items/give_xp_bottle