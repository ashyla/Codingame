#!/bin/bash
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# surfaceN: the number of points used to draw the surface of Mars.
read surfaceN

for (( i=0; i<surfaceN; i++ )); do
    # landX: X coordinate of a surface point. (0 to 6999)
    # landY: Y coordinate of a surface point. By linking all the points together in a sequential fashion, you form the surface of Mars.
    read landX landY
done
# game loop
while true; do
    
    # hSpeed: the horizontal speed (in m/s), can be negative.
    # vSpeed: the vertical speed (in m/s), can be negative.
    # fuel: the quantity of remaining fuel in liters.
    # rotate: the rotation angle in degrees (-90 to 90).
    # power: the thrust power (0 to 4).
    read X Y hSpeed vSpeed fuel rotate power
    
    if [ $vSpeed -le -40 ]; then
        if [ $power -ne 4 ]; then
            let power++
        fi
    elif [ $vSpeed -gt -40 ]; then
        if [ $power -ne 0 ]; then
            let power--
        fi
    fi
    
    # Write an action using echo
    # To debug: echo "Debug messages..." >&2
    # 2 integers: rotate power. rotate is the desired rotation angle (should be 0 for level 1), power is the desired thrust power (0 to 4).
    echo "0 ${power}"
done