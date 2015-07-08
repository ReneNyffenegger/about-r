X11()

df <- data.frame (
   col_1  = round(runif(10)*10, 1),
   col_2  = round(runif(10)*10, 1),
   col_3  = round(runif(10)*10, 1),
   col_4  = round(runif(10)*10, 1),
   col_5  = round(runif(10)*10, 1)
)


pairs(df, col=1:10)

z <- locator(1)
