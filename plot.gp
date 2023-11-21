# plot_script.gnu
set term wxt enhanced persist

set ylabel 'I_{r} (A)'
set xlabel 'U_{r} (V)'
set logscale y
set title 'Charakterystyka diody czerwonej LED w kierunku zaporowym'
set datafile separator ','
set format xy '%g'
Is = 1.97e-15
n=2.45
Vt=26e-3
f(x) = Is*(exp(x/(n*Vt))-1)
fit f(x) 'src/csvdata/Z4.csv' using 2:1 via Is, n
replot f(V) title sprintf('I_{s} = %.2e, n = %.2f', Is, n)
