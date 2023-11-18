reset
set datafile separator ','
set yrange [0:1]
set xrange [0:1]
set title "Charakterystyka prądowo-napięciowa diody 1N4004"

plot 'scope_5.csv' every ::2 using 2:3 smooth unique with lines

