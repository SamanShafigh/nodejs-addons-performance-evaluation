set xtics 2
set xrange [28:48]
set yrange [0:61145]

set xlabel "nth Fibonacci number"
set ylabel "Time (ms)"

set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 5 ps 1.5   # --- red
set grid ytics lc rgb "#bbbbbb" lw 1 lt 0
set grid xtics lc rgb "#bbbbbb" lw 1 lt 0

plot  "result.dat" using 1:2 title 'C++' with linespoints ls 1, \
      "result.dat" using 1:3 title 'Javascript' with linespoints ls 2

