tag @s add give_planks
tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_planks"} ] }
playsound note.pling @s ~~~
scoreboard players add @s own_xp -36
xp -36L @s
execute @s[tag=give_planks] ~~~ function shop_purchase/give_items/give_planks