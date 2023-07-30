replaceitem entity @s slot.inventory 10 keep bedwars:menu_pleasewait 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s slot.inventory 16 keep bedwars:menu_pleasewait 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
execute @s[hasitem={location=slot.inventory,slot=10,item=bedwars:menu_pleasewait}] ~ ~ ~ function inventory_menu/change_to_menu/change_to_menu2
execute @s[hasitem={location=slot.inventory,slot=16,item=bedwars:menu_pleasewait}] ~ ~ ~ function inventory_menu/change_to_menu/change_to_menu3
replaceitem entity @s slot.inventory 10 keep bedwars:menu1_particle_item 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"}}
replaceitem entity @s[tag=op] slot.inventory 16 keep bedwars:menu1_op_enabled_item 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"}}
replaceitem entity @s[tag=!op] slot.inventory 16 keep bedwars:menu1_op_disabled_item 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}