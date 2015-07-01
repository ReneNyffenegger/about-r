#
#     See also -> addmargins
#

m <- matrix (
       c(    4, 1, 3,
             2, 1, 2,
             1, 5, 2,
             4, 3, 1),
       ncol  = 3,
       byrow = TRUE
)

margin.table(m)
# [1] 29
sum(m)
# [1] 29

margin.table(m, 1)
# [1] 8 5 8 8
apply(m, 1, sum)
# [1] 8 5 8 8

margin.table(m, 2)
# [1] 11 10  8
apply(m, 2, sum)
# [1] 11 10  8
