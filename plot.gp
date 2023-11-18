# plot_script.gnu
set term wxt enhanced persist

set xlabel 'Current (A)'
set ylabel 'Voltage (V)'
set title 'Charaketerystyka diody czerwonej LED'

set datafile separator ','
set format xy '%g'
plot 'Z3.csv' using 1:2 with points title 'Uv'
