#
#  S.a. -> unix.time()
#

system.time(cat("\nHello World\n"))
# Hello World
#    user  system elapsed
#       0       0       0

cat ("\n\n")

set.seed(17)
nof_columns =  120
nof_rows    = 4500
m <- matrix( rnorm (nof_columns * nof_rows), nrow = nof_rows)

system.time( dist(m) )
#    user  system elapsed
#    7.55    0.02    7.61
