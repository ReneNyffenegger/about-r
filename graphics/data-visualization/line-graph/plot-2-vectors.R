x11()

x <- seq(-6, 10, by=0.25) # c(-6:10)
y <- x*x*x/8 - 9*x -15

x11()

plot(x, y, 
    type="l"         , # Type = "l" --> line graph
    main="Line Graph", # Title
    xlim=c(-8,12)    , # range for x
    ylim=c(-45,15)   , # range for y
    col ="blue"      , # color
 )

# wait for mouse click or enter pressed
z <- locator(1)
