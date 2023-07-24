tag @s add give_endstone
tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_endstone"} ] }
playsound note.pling @s ~~~
scoreboard players add @s own_xp -36
xp -36L @s
execute @s[tag=give_endstone] ~~~ function shop_purchase/give_items/give_endstone