tag @s add give_invisibility_potion
tellraw @s { "rawtext" : [ { "translate" : "text.tellraw.ingameinfo.purchase_invisibility_potion" } ] }
playsound note.pling @s ~~~
scoreboard players add @s own_xp -200
xp -250L @s
execute @s[tag=give_invisibility_potion] ~~~ function shop_purchase/give_items/give_invisibility_potion