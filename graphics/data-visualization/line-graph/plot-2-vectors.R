x11()

x <- seq(-6, 10, by=0.25) # c(-6:10)
y <- x*x*x/8 - 9*x -15

x11()

plot(x, y, 
    main="Scatter Plot"   , # Title
    sub ="plot 2 vectors" , # Sub title 
    xlab="x"              , # x label
    ylab="f(x)"           , # y label,
    xlim=c(-8,12)         , # range for x
    ylim=c(-45,15)        , # range for y
    col ="blue"           , # color
    type="l"                
 )

# wait for mouse click or enter pressed
z <- locator(1)
