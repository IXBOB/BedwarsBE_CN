tag @s add give_fireball
tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_fireball"} ] }
playsound note.pling @s ~~~
scoreboard players add @s own_xp -80
xp -80L @s
execute @s[tag=give_fireball] ~~~ function shop_purchase/give_items/give_fireball