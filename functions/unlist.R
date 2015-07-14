l = list(
     a = c('1', '2', '3'),
     b = c('4', '5', '6'),
     m = matrix (
           c(100, 101, 102, 103,
             104, 105, 106, 107),
           ncol  = 2,
           byrow = TRUE
    )
)

options(width=300)
ul = unlist(l)
ul
#    a1    a2    a3    b1    b2    b3    m1    m2    m3    m4    m5    m6    m7    m8
#   "1"   "2"   "3"   "4"   "5"   "6" "100" "102" "104" "106" "101" "103" "105" "107"

typeof(ul)
# [1] "character"

sum(as.numeric(ul))
# [1] 849
