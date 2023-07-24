tag @s add give_golden_apple
tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_golden_apple"} ] }
playsound note.pling @s ~~~
scoreboard players add @s own_xp -30
xp -30L @s
execute @s[tag=give_golden_apple] ~~~ function shop_purchase/give_items/give_golden_apple