x <- c(1:10)
y <- x*x - 7*x - 20

x11()

plot(x, y, 
    main="Plot Example", # Title
    sub ="plot.R"      , # Sub title 
    xlab="x"           , # x label
    ylab="f(x)"        , # y label,
    xlim=c(-3,13)      , # range for x
    ylim=c(-40,15)     , # range for y
    col ="blue"        , # color
    pch = 19           , # 19=solid
    type="p"             # type (p = points, also possible: 
                         #       l = lines
                         #       b = both lines and points
                         #       c = b without p
                         #       o = overplotted
                         #       h = histogram
                         #       s = stair steps 
                         #       S = other steps,
                         #       n = not plotting
    )


z <- locator(1) # wait for mouse click or enter pressed

#
#     Plot a function
#
plot (function(x) { x*x - 7*x - 20 },
      -2, 12)

z <- locator(1) # wait for mouse click or enter pressed
