#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Setup One Chunk Survival
recipe give @a *
setblock 0 64 0 minecraft:bedrock
worldborder set 17
worldborder damage amount 100
worldborder warning distance 0
worldborder center 0 0
function one_chunk_survival:changelog/building


##Gamerules Setup
gamerule reducedDebugInfo false
gamerule enderPearlsVanishOnDeath true
gamerule waterSourceConversion true
gamerule lavaSourceConversion true
gamerule spectatorsGenerateChunks true
gamerule fallDamage true
gamerule fireDamage true
gamerule freezeDamage true
gamerule forgiveDeadPlayers true
gamerule mobExplosionDropDecay true
gamerule commandModificationBlockLimit 1000000
gamerule maxCommandChainLength 1000000
#gamerule playersNetherPortalCreativeDelay 1
#gamerule playersNetherPortalDefaultDelay 80
#gamerule projectilesCanBreakBlocks true
gamerule maxEntityCramming 24
gamerule randomTickSpeed 3
gamerule snowAccumulationHeight 3
gamerule showDeathMessages true
gamerule keepInventory false
gamerule mobGriefing true
gamerule doMobLoot true
gamerule naturalRegeneration true
gamerule doVinesSpread true
gamerule doFireTick true
gamerule doInsomnia true
gamerule doMobSpawning true
gamerule doWardenSpawning true
gamerule doPatrolSpawning true
gamerule doTraderSpawning true


##Scoreboard Setup
scoreboard objectives add One_Chunck_tp dummy
scoreboard objectives add One_Chunk_Survival minecraft.custom:minecraft.play_time


##Teleport Setup
execute in minecraft:overworld run tp @a[scores={One_Chunck_tp=1}] 0 -50 0 0 90
execute in minecraft:the_nether run tp @a[scores={One_Chunck_tp=2}] 0 130 0 0 90
execute in minecraft:the_end run tp @a[scores={One_Chunck_tp=3}] 0 0 0 0 90
execute as @a[scores={One_Chunck_tp=1}] run effect give @a minecraft:regeneration 21 250 true
execute as @a[scores={One_Chunck_tp=1}] run effect give @a minecraft:resistance 21 250 true
execute as @a[scores={One_Chunck_tp=1}] run effect give @a minecraft:saturation 21 250 true


##Start
execute as @a[scores={One_Chunk_Survival=..5}] run kill @e[type=!minecraft:player]
execute as @a[scores={One_Chunk_Survival=..1}] run clear @a
execute as @a[scores={One_Chunk_Survival=..100}] run summon minecraft:area_effect_cloud ~ ~1 ~
execute as @a[scores={One_Chunk_Survival=..1}] run difficulty normal
execute as @a[scores={One_Chunk_Survival=1}] run gamemode spectator @a
execute as @a[scores={One_Chunk_Survival=1}] run gamerule commandBlockOutput false
execute as @a[scores={One_Chunk_Survival=1}] run title @a title {"text":"Loading..."}
execute as @a[scores={One_Chunk_Survival=1}] run title @a subtitle {"text":"Worlds"}
execute as @a[scores={One_Chunk_Survival=1}] run title @a times 30 200 20
execute as @a[scores={One_Chunk_Survival=1}] run tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nLoading...."}


##Overworld
execute as @a[scores={One_Chunk_Survival=5}] run scoreboard players set @a One_Chunck_tp 1
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=10}] run fill 6 -46 6 -6 -52 -6 minecraft:air replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=20}] run fill 7 -52 7 -7 -46 7 minecraft:stone_bricks replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=20}] run fill -7 -46 7 -7 -52 -7 minecraft:stone_bricks replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=20}] run fill -7 -52 -7 7 -46 -7 minecraft:stone_bricks replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=20}] run fill 7 -46 -7 7 -52 7 minecraft:stone_bricks replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=20}] run fill 7 -45 7 -7 -45 -7 minecraft:stone_bricks replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=20}] run fill 7 -53 7 -7 -53 -7 minecraft:stone_bricks replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=20}] run fill -6 -52 -4 -4 -52 -6 minecraft:stone_bricks replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=20}] run fill -6 -52 4 -4 -52 6 minecraft:stone_bricks replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=20}] run fill 4 -52 6 6 -52 4 minecraft:stone_bricks replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=20}] run fill 6 -52 -4 4 -52 -6 minecraft:stone_bricks replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=30}] run fill -1 -50 -7 1 -52 -7 minecraft:air replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=30}] run fill 7 -52 -1 7 -50 1 minecraft:air replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=30}] run fill 1 -52 7 -1 -50 7 minecraft:air replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=30}] run fill -7 -50 1 -7 -52 -1 minecraft:air replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=31}] run fill 1 -52 -2 -1 -52 -2 minecraft:end_portal_frame[facing=south] replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=31}] run fill -2 -52 -1 -2 -52 1 minecraft:end_portal_frame[facing=east] replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=31}] run fill -1 -52 2 1 -52 2 minecraft:end_portal_frame[facing=north] replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=31}] run fill 2 -52 1 2 -52 -1 minecraft:end_portal_frame[facing=west] replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=35}] run fill 1 -53 -2 -1 -55 -2 minecraft:polished_deepslate replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=35}] run fill -2 -55 -1 -2 -53 1 minecraft:polished_deepslate replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=35}] run fill -1 -53 2 1 -55 2 minecraft:polished_deepslate replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=35}] run fill 2 -55 1 2 -53 -1 minecraft:polished_deepslate replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=36}] run fill 1 -55 -1 -1 -57 1 minecraft:lava replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=36}] run fill -6 -52 -6 -5 -52 -5 minecraft:lava replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=36}] run fill -6 -52 6 -5 -52 5 minecraft:lava replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=36}] run fill 6 -52 6 5 -52 5 minecraft:lava replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=36}] run fill 6 -52 -6 5 -52 -5 minecraft:lava replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=36}] run fill 1 -53 1 -1 -54 -1 minecraft:air replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=36}] run setblock 1 -50 7 minecraft:stone_brick_stairs[facing=east,half=top,shape=straight,waterlogged=false] replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=36}] run setblock -1 -50 7 minecraft:stone_brick_stairs[facing=west,half=top,shape=straight,waterlogged=false] replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=36}] run setblock -7 -50 1 minecraft:stone_brick_stairs[facing=south,half=top,shape=straight,waterlogged=false] replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=36}] run setblock -7 -50 -1 minecraft:stone_brick_stairs[facing=north,half=top,shape=straight,waterlogged=false] replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=36}] run setblock -1 -50 -7 minecraft:stone_brick_stairs[facing=west,half=top,shape=straight,waterlogged=false] replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=36}] run setblock 1 -50 -7 minecraft:stone_brick_stairs[facing=east,half=top,shape=straight,waterlogged=false] replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=36}] run setblock 7 -50 -1 minecraft:stone_brick_stairs[facing=north,half=top,shape=straight,waterlogged=false] replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=36}] run setblock 7 -50 1 minecraft:stone_brick_stairs[facing=south,half=top,shape=straight,waterlogged=false] replace
execute in minecraft:overworld as @a[scores={One_Chunk_Survival=37}] run fill -1 -50 -8 1 -52 -8 minecraft:air replace
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run fill -8 -53 1 -7 -53 0 minecraft:cracked_stone_bricks replace
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run fill -7 -49 -4 -7 -48 -4 minecraft:mossy_stone_bricks replace
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run setblock -7 -48 -5 minecraft:mossy_stone_bricks replace
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run setblock 4 -52 4 minecraft:chiseled_stone_bricks replace
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run setblock -4 -52 4 minecraft:chiseled_stone_bricks replace
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run setblock -4 -52 -4 minecraft:chiseled_stone_bricks replace
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run setblock 4 -52 -4 minecraft:chiseled_stone_bricks replace
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run fill 4 -52 5 4 -52 6 minecraft:cracked_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run fill 6 -53 -1 5 -53 0 minecraft:mossy_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run setblock 5 -53 1 minecraft:mossy_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run setblock 4 -53 0 minecraft:mossy_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run setblock -1 -53 -3 minecraft:cracked_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run fill 0 -53 -4 1 -53 -5 minecraft:cracked_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run fill 1 -46 -7 4 -46 -7 minecraft:mossy_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run setblock 2 -47 -7 minecraft:mossy_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run fill -1 -53 -8 0 -53 -8 minecraft:cracked_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run setblock 1 -53 -7 minecraft:cracked_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run setblock -7 -48 5 minecraft:mossy_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run fill -7 -49 4 -7 -49 3 minecraft:mossy_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run setblock -7 -50 3 minecraft:mossy_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run fill -2 -45 1 -2 -45 -3 minecraft:cracked_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run fill -1 -45 0 -1 -45 -1 minecraft:cracked_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run fill 7 -46 7 7 -48 5 minecraft:mossy_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run setblock 3 -45 1 minecraft:cracked_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run fill 4 -45 0 4 -45 3 minecraft:cracked_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run fill 0 -48 7 1 -47 7 minecraft:cracked_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run setblock 2 -48 7 minecraft:cracked_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run setblock 4 -50 7 minecraft:mossy_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run setblock -1 -53 6 minecraft:cracked_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run fill 0 -53 5 0 -53 4 minecraft:cracked_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run setblock -3 -53 2 minecraft:cracked_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run fill -4 -47 -7 -4 -48 -7 minecraft:cracked_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run setblock -3 -48 -7 minecraft:cracked_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run fill -5 -45 -4 -4 -45 -3 minecraft:mossy_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run setblock -4 -45 5 minecraft:mossy_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run fill -3 -53 6 -3 -53 5 minecraft:mossy_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run fill 7 -47 -3 7 -48 -1 minecraft:cracked_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run setblock 7 -47 0 minecraft:cracked_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run setblock 7 -46 -4 minecraft:cracked_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run fill -5 -46 7 -6 -47 7 minecraft:mossy_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=37}] run setblock -7 -46 6 minecraft:mossy_stone_bricks
execute in minecraft:overworld as @a[scores={one_chunk_survival=38}] run setblock 0 -45 0 minecraft:polished_andesite
execute in minecraft:overworld as @a[scores={one_chunk_survival=38}] run setblock 0 -44 0 minecraft:air replace
execute in minecraft:overworld as @a[scores={one_chunk_survival=39}] run setblock 0 -44 0 minecraft:chest[facing=south,type=single,waterlogged=false]{Items:[{Count:10b,Slot:4b,id:"minecraft:obsidian"},{Count:1b,Slot:10b,id:"minecraft:red_mushroom"},{Count:1b,Slot:12b,id:"minecraft:pumpkin_seeds"},{Count:1b,Slot:13b,id:"minecraft:melon_slice"},{Count:1b,Slot:14b,id:"minecraft:beetroot_seeds"},{Count:1b,Slot:16b,id:"minecraft:brown_mushroom"},{Count:1b,Slot:22b,id:"minecraft:pointed_dripstone"}]} destroy


##The Nether
execute as @a[scores={one_chunk_survival=40}] run scoreboard players set @a tp 2
execute in minecraft:the_nether as @a[scores={one_chunk_survival=51}] run fill 8 127 8 -9 123 -9 minecraft:netherrack
execute in minecraft:the_nether as @a[scores={one_chunk_survival=51}] run fill -5 128 -5 3 128 3 minecraft:nether_bricks
execute in minecraft:the_nether as @a[scores={one_chunk_survival=51}] run fill 3 133 -5 -5 133 3 minecraft:nether_bricks
execute in minecraft:the_nether as @a[scores={one_chunk_survival=51}] run fill 3 129 3 3 132 3 minecraft:nether_bricks
execute in minecraft:the_nether as @a[scores={one_chunk_survival=51}] run fill 3 129 -5 3 132 -5 minecraft:nether_bricks
execute in minecraft:the_nether as @a[scores={one_chunk_survival=51}] run fill -5 129 -5 -5 132 -5 minecraft:nether_bricks
execute in minecraft:the_nether as @a[scores={one_chunk_survival=51}] run fill -5 129 3 -5 132 3 minecraft:nether_bricks
execute in minecraft:the_nether as @a[scores={one_chunk_survival=51}] run fill -2 128 3 0 128 3 minecraft:nether_brick_stairs[facing=north,half=bottom,shape=straight,waterlogged=false]
execute in minecraft:the_nether as @a[scores={one_chunk_survival=52}] run fill 3 128 0 3 128 -2 minecraft:nether_brick_stairs[facing=west,half=bottom,shape=straight,waterlogged=false]
execute in minecraft:the_nether as @a[scores={one_chunk_survival=52}] run fill 0 128 -5 -2 128 -5 minecraft:nether_brick_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
execute in minecraft:the_nether as @a[scores={one_chunk_survival=52}] run fill -5 128 -2 -5 128 0 minecraft:nether_brick_stairs[facing=east,half=bottom,shape=straight,waterlogged=false]
execute in minecraft:the_nether as @a[scores={one_chunk_survival=52}] run setblock -5 132 2 minecraft:nether_brick_fence[east=false,north=false,south=true,waterlogged=false,west=false]
execute in minecraft:the_nether as @a[scores={one_chunk_survival=52}] run setblock -4 132 3 minecraft:nether_brick_fence[east=false,north=false,south=false,waterlogged=false,west=true]
execute in minecraft:the_nether as @a[scores={one_chunk_survival=52}] run setblock 2 132 3 minecraft:nether_brick_fence[east=true,north=false,south=false,waterlogged=false,west=false]
execute in minecraft:the_nether as @a[scores={one_chunk_survival=52}] run setblock 3 132 2 minecraft:nether_brick_fence[east=false,north=false,south=true,waterlogged=false,west=false]
execute in minecraft:the_nether as @a[scores={one_chunk_survival=52}] run setblock 3 132 -4 minecraft:nether_brick_fence[east=false,north=true,south=false,waterlogged=false,west=false]
execute in minecraft:the_nether as @a[scores={one_chunk_survival=52}] run setblock 2 132 -5 minecraft:nether_brick_fence[east=true,north=false,south=false,waterlogged=false,west=false]
execute in minecraft:the_nether as @a[scores={one_chunk_survival=52}] run setblock -4 132 -5 minecraft:nether_brick_fence[east=false,north=false,south=false,waterlogged=false,west=true]
execute in minecraft:the_nether as @a[scores={one_chunk_survival=52}] run setblock -5 132 -4 minecraft:nether_brick_fence[east=false,north=true,south=false,waterlogged=false,west=false]
execute in minecraft:the_nether as @a[scores={one_chunk_survival=52}] run fill 3 134 3 -5 134 -5 minecraft:nether_brick_slab[type=bottom,waterlogged=false]
execute in minecraft:the_nether as @a[scores={one_chunk_survival=53}] run setblock -1 128 -1 minecraft:chiseled_nether_bricks
execute in minecraft:the_nether as @a[scores={one_chunk_survival=53}] run setblock -1 129 -1 minecraft:spawner{SpawnData:{entity:{id:"minecraft:blaze"}}}
execute in minecraft:the_nether as @a[scores={one_chunk_survival=53}] run fill -5 127 6 -6 127 5 minecraft:soul_sand
execute in minecraft:the_nether as @a[scores={one_chunk_survival=53}] run fill -6 126 5 -5 126 6 minecraft:soul_soil
execute in minecraft:the_nether as @a[scores={one_chunk_survival=53}] run fill -5 128 5 -5 128 6 minecraft:nether_wart
setblock -1 127 -1 minecraft:air replace
execute in minecraft:the_nether as @a[scores={one_chunk_survival=54}] run setblock -1 127 -1 minecraft:chest[facing=north,type=single,waterlogged=false]{Items:[{Count:1b,Slot:3b,id:"minecraft:sand"},{Count:1b,Slot:4b,id:"minecraft:sand"},{Count:1b,Slot:5b,id:"minecraft:sand"},{Count:1b,Slot:10b,id:"minecraft:sugar_cane"},{Count:1b,Slot:11b,id:"minecraft:sand"},{Count:1b,Slot:12b,id:"minecraft:birch_sapling"},{Count:1b,Slot:13b,id:"minecraft:ice"},{Count:1b,Slot:14b,id:"minecraft:bamboo"},{Count:1b,Slot:15b,id:"minecraft:sand"},{Count:1b,Slot:16b,id:"minecraft:cactus"},{Count:1b,Slot:21b,id:"minecraft:sand"},{Count:1b,Slot:22b,id:"minecraft:sand"},{Count:1b,Slot:23b,id:"minecraft:sand"}]} destroy
execute as @a[scores={one_chunk_survival=70}] run scoreboard players set @a tp 3


##End Install
execute as @a[scores={one_chunk_survival=81}] run scoreboard players set @a tp 1
execute as @a[scores={one_chunk_survival=80}] run scoreboard objectives add Deaths deathCount
execute as @a[scores={one_chunk_survival=80}] run scoreboard objectives setdisplay list Deaths
execute as @a[scores={one_chunk_survival=80}] run advancement revoke @a everything
execute as @a[scores={one_chunk_survival=80}] run recipe take @a *
execute as @a[scores={one_chunk_survival=90}] run title @a title {"text":"One Chunk"}
execute as @a[scores={one_chunk_survival=90}] run title @a subtitle {"text":"Survival"}
execute as @a[scores={one_chunk_survival=90}] run title @a times 30 200 30
execute as @a[scores={one_chunk_survival=80}] run weather clear
execute as @a[scores={one_chunk_survival=91}] run time set 0
execute as @a[scores={one_chunk_survival=91}] run xp set @a 0 levels
execute as @a[scores={one_chunk_survival=91}] run xp set @a 0 points
execute as @a[scores={one_chunk_survival=90}] run scoreboard players set @a tp 0
execute as @a[scores={one_chunk_survival=90}] run tp @a 0 65 0
execute as @a[scores={one_chunk_survival=91}] run fill -2 64 -2 2 64 2 minecraft:dirt keep
execute as @a[scores={one_chunk_survival=91}] run fill -2 62 2 2 63 -2 minecraft:stone replace
execute as @a[scores={one_chunk_survival=150}] run place feature minecraft:fancy_oak_bees_0002 1 65 0
execute as @a[scores={one_chunk_survival=150}] run setblock 0 65 0 minecraft:air destroy
execute as @a[scores={one_chunk_survival=151}] run setblock 1 66 0 minecraft:oak_log[axis=y] keep
setblock 0 66 0 minecraft:birch_wall_sign[facing=west,waterlogged=false]{back_text:{color:"white",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"white",has_glowing_text:1b,messages:['{"text":"One Chunk Survival"}','{"text":"1.20.2"}','{"text":"---------------"}','{"text":""}']},is_waxed:0b}
execute as @a[scores={one_chunk_survival=515}] run tp @a 0 500 0
execute as @a[scores={one_chunk_survival=510}] run give @a minecraft:oak_sapling 2
execute as @a[scores={one_chunk_survival=520}] run give @a minecraft:bone 16
execute as @a[scores={one_chunk_survival=520}] run give @a minecraft:dirt 4
execute as @a[scores={one_chunk_survival=520}] run effect give @a minecraft:resistance 51 250 true
execute as @a[scores={one_chunk_survival=91}] run gamemode survival @a
execute as @a[scores={one_chunk_survival=520}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2
execute as @a[scores={one_chunk_survival=100}] run execute in minecraft:overworld run tp @a 0 500 0 90 0
effect give @a night_vision infinite 0 true