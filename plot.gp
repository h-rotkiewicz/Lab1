# plot_script.gnu
set term wxt enhanced persist

set ylabel 'I_{r} (mA)'
set xlabel 'U_{r} (V)'
set title 'Charaketerystyka diody czerwonej LED w kierunku zaporowym'
set datafile separator ','
set format xy '%g'
plot 'src/csvdata/Z4.csv' using 1:2 with linespoints notitle
