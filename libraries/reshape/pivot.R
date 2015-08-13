library(reshape)

set.seed(280870)

df <- expand.grid(
  col_1 = paste0('R-', sprintf("%d", 1:5 )),
  col_2 = c('Foo', 'Bar', 'Baz')
)

df$value = rnorm(nrow(df))

df

cast(df, col_1 ~ col_2)
#   col_1        Foo        Bar         Baz
# 1   R-1 -0.2911962  0.9229090 -0.49344587
# 2   R-2 -2.5625404  1.0896811 -0.01146062
# 3   R-3  0.1484070 -0.1744453 -0.35371789
# 4   R-4 -0.7528230 -0.0992938  2.29437515
# 5   R-5 -0.1121641 -0.3777929 -0.59327981
