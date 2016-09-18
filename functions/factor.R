g <- c(1,2,3,1,4,1,5,4)
summary(g)
#    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
#   1.000   1.000   2.500   2.625   4.000   5.000

cat("\n\n")
f <- factor(g)

f
# [1] 1 2 3 1 4 1 5 4
# Levels: 1 2 3 4 5

summary(f)
# 1 2 3 4 5
# 3 1 1 2 1

#
# ------------------
#


foo_iso_numbers       <- c(276, 380, 276, 756, 756,  40)
foo_iso_names         <- factor(foo_iso_numbers, levels=c(40, 276, 380, 756))
levels(foo_iso_names) <- c('Austria', 'Germany', 'Italy', 'Switzerland')
foo_iso_names
# [1] Germany     Italy       Germany     Switzerland Switzerland Austria
# Levels: Austria Germany Italy Switzerland

as.numeric(foo_iso_names)
# [1] 2 3 2 4 4 1

levels(foo_iso_names)
# [1] "Austria"     "Germany"     "Italy"       "Switzerland"

