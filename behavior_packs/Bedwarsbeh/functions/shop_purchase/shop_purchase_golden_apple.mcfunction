tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_golden_apple"} ] }
playsound note.pling @s ~~~
scoreboard players add @s own_xp -30
xp -30L @s
function shop_purchase/give_items/give_golden_apple