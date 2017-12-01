# The while loop represents the game.
# Each iteration represents a turn of the game
# where you are given inputs (the heights of the mountains)
# and where you have to print an output (the index of the mountain to fire on)
# The inputs you are given are automatically updated according to your last actions.


# game loop
while true; do
    m=()
    max=0
    imax=0
    for (( i=0; i<8; i++ )); do
        # mountainH: represents the height of one mountain.
        read mountainH
        if (($mountainH >$max)); then
            max=$mountainH
            imax=$i
        fi
    done

    # Write an action using echo
    echo $imax
    # To debug: echo "Debug messages..." >&2
done