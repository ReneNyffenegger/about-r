X11()

x <- c(  13.1 , 16.2 , 12.9    ,   28.7 , 25.4   ,   31.5 , 36.5 , 33.3  ,
         11.8 , 17.6           ,   26.4 , 21.3   ,   38.3 , 37.4 , 31.5   )

y <- c(    1  ,    3 ,    6    ,      5 ,    9   ,     12 ,   10 ,   11  ,
           5  ,    8           ,     11 ,    7   ,      9 ,    8 ,    9   )

stopifnot(length(x) == length(y))

bins  <- cut(x, c(10, 20, 30, 40))
mean_ <- tapply(y, bins, mean)

barplot(mean_,
        width  = 10,
        space  =  0,
#       offset =  0,
        ylim   = c(0, max(y)+0.5),
#       xlim   = c(-10, 30)
)

points(x-10, y,
   bg='orange',
   col='red',
   pch=21,
   cex=3
)

invisible(locator(1))
