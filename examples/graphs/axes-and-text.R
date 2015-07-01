
X11()

BOTTOM                <- 1
LEFT                  <- 2
TOP                   <- 3
RIGHT                 <- 4
AXIS_LABEL_HORIZONTAL <- 1

plot (
  0:10, 0:10,
  pch     = 16,
  col     = 0:10,
  main    = "MAIN label", col.main="gray",
  axes    =  FALSE,
# --
  xlab    = "XLAB label",
  ylab    = "YLAB label", col.lab="blue"
)


mtext ("MTEXT (1: bottom)", BOTTOM, col="green"  )
mtext ("MTEXT (2: left)"  , LEFT  , col="magenta")
mtext ("MTEXT (3: top)"   , TOP   , col="blue"   )
mtext ("MTEXT (4: right)" , RIGHT , col="red"    )

axis(BOTTOM,
     col     =    "brown",  # Color of «scale»
     col.axis="rosybrown"   # Color of numbers
)

axis(TOP,
     col      =     "purple",
     col.axis = "powderblue"
)

axis(RIGHT,
     col      = "papayawhip",
     col.axis = "peachpuff2"
)

axis(LEFT,
     col      = "seashell1",
     col.axis = "seashell4",
     las      =  AXIS_LABEL_HORIZONTAL,
     at       = c(    0 ,    2 ,     4 ,    6 ,      8 ,   10 ),
     labels   = c('Zero', 'Two', 'Four', 'Six', 'Eight', 'Ten')
)

z <- locator(1)
