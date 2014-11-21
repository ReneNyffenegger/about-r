#
#   http://cran.r-project.org/doc/manuals/R-lang.pdf, Chapter 2.1.1 «Vectors» {
#
#   
#   R has six basic (‘atomic’) vector types: logical, integer, real, complex,
#   string (or character) and raw
#
#      typeof      mode        storage.mode
#      ---------   ---------   ------------
#      logical     logical     logical
#      integer     numeric     integer
#      double      numeric     double
#      complex     complex     complex
#      character   character   character
#      raw         raw         raw
#
# }
#
# Compare with ../functions/typeof.R and ../functions/mode.R
#


typeof_mode_storage.mode <- function(x) {


  print(sprintf("  %-10s  %-10s  %-10s", typeof(x), mode(x), storage.mode(x)))

}

typeof_mode_storage.mode(TRUE      )
typeof_mode_storage.mode(factor(c(1, 2, 3)))
typeof_mode_storage.mode(       c(1, 2, 3) )
typeof_mode_storage.mode(1+1i              )
typeof_mode_storage.mode(c("foo", "bar")   )
typeof_mode_storage.mode(raw(2)            )


# Output:
# ------
# [1] "  logical     logical     logical   "
# [1] "  integer     numeric     integer   "
# [1] "  double      numeric     double    "
# [1] "  complex     complex     complex   "
# [1] "  character   character   character "
# [1] "  raw         raw         raw       "



v <- 42:100

head  (v)
# [1] 42 43 44 45 46 47

tail  (v)
# [1]  95  96  97  98  99 100

length(v)
# [1] 59
