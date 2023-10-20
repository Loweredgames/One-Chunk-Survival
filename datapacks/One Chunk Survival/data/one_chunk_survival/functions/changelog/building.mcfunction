#---SETUP-BUILDING---#

#Setup

bossbar add building {"text":"BUILDING","color":"white","bold":true}
bossbar set minecraft:building players @a
bossbar set minecraft:building color green
bossbar set minecraft:building style progress
bossbar set minecraft:building max 100

#Version Number

bossbar set building name {"text":"nome-edizione,numero versione di Minecraft stabile,numero versione di Minecraft snapshots,nome_progetto:BUILDING:giorno,mese,anno,correzioni,versione-aggiuntiva-con-numero","color":"white","bold":true}

#Map Progress

bossbar set minecraft:building value 0

#Warning Message

title @a actionbar {"text":"\u26a0Work in Progress\u26a0","bold":true,"color":"dark_red"}

#Bossbar Visible

bossbar set minecraft:building visible true
