import sys
import math

# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

n = int(input())
tabHorses = []
#tabHorses = sorted([int(input()) for i in range(n)])

for i in range(n):
    pi = int(input())
    tabHorses.append(pi)
tabHorses.sort()

minDiff = 100000
for i in range(n-1):
    diff = int(abs(tabHorses[i] - tabHorses[i+1]))
    
    if diff is 0:
        minDiff = diff
    elif diff < minDiff:
        minDiff = diff
    
#One other way:
#for i in range(n-1):
#    minDiff = min(minDiff, abs(tabHorses[i] - tabHorses[i+1]))


# Write an action using print
# To debug: print("Debug messages...", file=sys.stderr)

print(minDiff)