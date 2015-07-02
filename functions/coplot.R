X11()

CNT = 150

A1  =  35
A2  =  -8
B1  =   3
B2  = -14
E1  =  rnorm(CNT, mean = 0  , sd =1 )
E2  =  rnorm(CNT, mean = 0.5, sd =3 )


explantory_1 <- rnorm(CNT, mean =  10, sd = 1.5)
explantory_2 <- rnorm(CNT, mean = 120, sd = 3.8)

response =  9 * (
  
  0.1  * (A1 + B1*explantory_1 + E1 ) +
  0.01 * (A2 + B2*explantory_2 + E2 )

)

plot (response ~ explantory_1)
z <- locator(1)

plot (response ~ explantory_2)
z <- locator(1)

coplot (response ~ explantory_1 | explantory_2, panel = panel.smooth)
z <- locator(1)
