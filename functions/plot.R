x <- c(1:10)
y <- x*x - 7*x - 20

x11()

plot(x, y, 
    main="Plot Example", # Title
    sub ="plot.R"      , # Sub title 
    xlab="x"           , # x label
    ylab="f(x)"        , # y label,
    col ="blue"        , # color
    type="p"             # type (p = points, also possible: l, b, c, o, h, s, S, na
    )


z <- locator(1) # wait for mouse click or enter pressed

plot (function(x) { x*x - 7*x - 20 },
      -2, 12)

z <- locator(1) # wait for mouse click or enter pressed
