# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.
# ---
# Hint: You can use the debug stream to print initialTX and initialTY, if Thor seems not follow your orders.

# lightX: the X position of the light of power
# lightY: the Y position of the light of power
# initialTX: Thor's starting X position
# initialTY: Thor's starting Y position
read lightX lightY initialTX initialTY


let thorX=initialTX
let thorY=initialTY

# game loop
while true; do
    directionX=""
    directionY=""
    # remainingTurns: The remaining amount of turns Thor can move. Do not remove this line.
    read remainingTurns
    
    if [ $thorX -lt $lightX ]; then
        directionX="E"
        let thorX++;
    elif [ $thorX -gt $lightX ]; then
        directionX="W"
        let thorX--
    fi
    if [ $thorY -lt $lightY ]; then
        directionY="S"
        let thorY++
    elif [ $thorY -gt $lightY ]; then
        directionY="N"
        let thorY--
    fi
    # A single line providing the move to be made: N NE E SE S SW W or NW
    echo ${directionY}${directionX}

done