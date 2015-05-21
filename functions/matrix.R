# ------------------------------------------
#      A «bycol» matrix
#
m_by_col <- matrix( c(   1,   2,   3,  11,
                        22,  33, 111, 222,
                       333,1111,2222,3333),
                    nrow=3,
                    ncol=4,
                    byrow=FALSE)    # default

show(m_by_col)
#      [,1] [,2] [,3] [,4]
# [1,]    1   11  111 1111
# [2,]    2   22  222 2222
# [3,]    3   33  333 3333


n <- m_by_col[c(1,3,5,7)]
show(n)
# [1]   1   3  22 111



# ------------------------------------------
#      A «byrow» matrix

m_by_row <- matrix( c(   1,   2,   3,   4,
                        11,  22,  33,  44,
                       111, 222, 333, 444),
                    nrow=3,
                    ncol=4,
                    byrow=TRUE)

show(m_by_row)
#      [,1] [,2] [,3] [,4]
# [1,]    1    2    3    4
# [2,]   11   22   33   44
# [3,]  111  222  333  444

n <- m_by_row[c(1,3,5,7)]       # Note: counts as in a «by col» matrix.
show(n)
# [1]   1 111  22   3

# ------------------------------------------

is.matrix(m_by_col)
# [1] TRUE

dim(m_by_col)
# [1] 3 4


#
#   See also
#     -> colnames  (to give names to the columns of the matrix)
#
