tag @s add give_tnt
tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_tnt"} ] }
playsound note.pling @s ~~~
scoreboard players add @s own_xp -100
xp -100L @s
execute @s[tag=give_tnt] ~~~ function shop_purchase/give_items/give_tnt