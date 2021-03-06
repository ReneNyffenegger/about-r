x <- c(1:10)
y <- x*x - 7*x - 20

x11()

# { first example

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

# }

# { Plot a function

plot (function(x) { x*x - 7*x - 20 },
      -2, 12)

z <- locator(1) # wait for mouse click or enter pressed

# }

# { Using different «pch» and «col» for the «dots»


d <- data.frame(
  
      foo = c(1.1, 2.0, 2.7, 2.4, 1.4, 3.3, 2.5, 1.7, 3.6, 3.3, 2.3, 3.6, 1.9, 3.8, 2.5),
      bar = c(2.9, 1.8, 2.6, 1.5, 3.3, 3.2, 1.1, 2.0, 2.9, 1.2, 2.5, 1.4, 3.1, 2.0, 1.2),
      baz = c(1  , 1  , 3  , 2  , 1  , 2  , 3  , 2  , 1  , 2  , 1  , 2  , 3  , 2  , 2  )
)

plot(d$foo, d$bar, pch=d$baz, col=c('red', 'blue', 'darkgreen')[d$baz])

z <- locator(1)

# }
