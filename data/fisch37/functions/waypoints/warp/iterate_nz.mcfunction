##
 # iterate_nx.mcfunction
 # -X implementation of the warping loop.
 # Created by Fisch37
##

execute at @s if score z f37_tp_pos matches ..-16777216 run tp ~ ~ ~-16777216
execute if score z f37_tp_pos matches ..-16777216 run scoreboard players add z f37_tp_pos 16777216

execute at @s if score z f37_tp_pos matches ..-8388608 run tp ~ ~ ~-8388608
execute if score z f37_tp_pos matches ..-8388608 run scoreboard players add z f37_tp_pos 8388608

execute at @s if score z f37_tp_pos matches ..-4194304 run tp ~ ~ ~-4194304
execute if score z f37_tp_pos matches ..-4194304 run scoreboard players add z f37_tp_pos 4194304

execute at @s if score z f37_tp_pos matches ..-2097152 run tp ~ ~ ~-2097152
execute if score z f37_tp_pos matches ..-2097152 run scoreboard players add z f37_tp_pos 2097152

execute at @s if score z f37_tp_pos matches ..-1048576 run tp ~ ~ ~-1048576
execute if score z f37_tp_pos matches ..-1048576 run scoreboard players add z f37_tp_pos 1048576

execute at @s if score z f37_tp_pos matches ..-524288 run tp ~ ~ ~-524288
execute if score z f37_tp_pos matches ..-524288 run scoreboard players add z f37_tp_pos 524288

execute at @s if score z f37_tp_pos matches ..-262144 run tp ~ ~ ~-262144
execute if score z f37_tp_pos matches ..-262144 run scoreboard players add z f37_tp_pos 262144

execute at @s if score z f37_tp_pos matches ..-131072 run tp ~ ~ ~-131072
execute if score z f37_tp_pos matches ..-131072 run scoreboard players add z f37_tp_pos 131072

execute at @s if score z f37_tp_pos matches ..-65536 run tp ~ ~ ~-65536
execute if score z f37_tp_pos matches ..-65536 run scoreboard players add z f37_tp_pos 65536

execute at @s if score z f37_tp_pos matches ..-32768 run tp ~ ~ ~-32768
execute if score z f37_tp_pos matches ..-32768 run scoreboard players add z f37_tp_pos 32768

execute at @s if score z f37_tp_pos matches ..-16384 run tp ~ ~ ~-16384
execute if score z f37_tp_pos matches ..-16384 run scoreboard players add z f37_tp_pos 16384

execute at @s if score z f37_tp_pos matches ..-8192 run tp ~ ~ ~-8192
execute if score z f37_tp_pos matches ..-8192 run scoreboard players add z f37_tp_pos 8192

execute at @s if score z f37_tp_pos matches ..-4096 run tp ~ ~ ~-4096
execute if score z f37_tp_pos matches ..-4096 run scoreboard players add z f37_tp_pos 4096

execute at @s if score z f37_tp_pos matches ..-2048 run tp ~ ~ ~-2048
execute if score z f37_tp_pos matches ..-2048 run scoreboard players add z f37_tp_pos 2048

execute at @s if score z f37_tp_pos matches ..-1024 run tp ~ ~ ~-1024
execute if score z f37_tp_pos matches ..-1024 run scoreboard players add z f37_tp_pos 1024

execute at @s if score z f37_tp_pos matches ..-512 run tp ~ ~ ~-512
execute if score z f37_tp_pos matches ..-512 run scoreboard players add z f37_tp_pos 512

execute at @s if score z f37_tp_pos matches ..-256 run tp ~ ~ ~-256
execute if score z f37_tp_pos matches ..-256 run scoreboard players add z f37_tp_pos 256

execute at @s if score z f37_tp_pos matches ..-128 run tp ~ ~ ~-128
execute if score z f37_tp_pos matches ..-128 run scoreboard players add z f37_tp_pos 128

execute at @s if score z f37_tp_pos matches ..-64 run tp ~ ~ ~-64
execute if score z f37_tp_pos matches ..-64 run scoreboard players add z f37_tp_pos 64

execute at @s if score z f37_tp_pos matches ..-32 run tp ~ ~ ~-32
execute if score z f37_tp_pos matches ..-32 run scoreboard players add z f37_tp_pos 32

execute at @s if score z f37_tp_pos matches ..-16 run tp ~ ~ ~-16
execute if score z f37_tp_pos matches ..-16 run scoreboard players add z f37_tp_pos 16

execute at @s if score z f37_tp_pos matches ..-8 run tp ~ ~ ~-8
execute if score z f37_tp_pos matches ..-8 run scoreboard players add z f37_tp_pos 8

execute at @s if score z f37_tp_pos matches ..-4 run tp ~ ~ ~-4
execute if score z f37_tp_pos matches ..-4 run scoreboard players add z f37_tp_pos 4

execute at @s if score z f37_tp_pos matches ..-2 run tp ~ ~ ~-2
execute if score z f37_tp_pos matches ..-2 run scoreboard players add z f37_tp_pos 2

execute at @s if score z f37_tp_pos matches ..-1 run tp ~ ~ ~-1
execute if score z f37_tp_pos matches ..-1 run scoreboard players add z f37_tp_pos 1


execute if score z f37_tp_pos matches ..-1 run function fisch37:waypoints/warp/iterate_nx