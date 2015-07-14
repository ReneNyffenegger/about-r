#
#  S.a. -> system.time()
#

unix.time(cat("\nHello World\n"))
# Hello World
#    user  system elapsed
#       0       0       0

cat ("\n\n")

set.seed(17)
nof_columns =  120
nof_rows    = 4500
m <- matrix( rnorm (nof_columns * nof_rows), nrow = nof_rows)

unix.time( dist(m) )
#    user  system elapsed
#    7.65    0.03    7.69
