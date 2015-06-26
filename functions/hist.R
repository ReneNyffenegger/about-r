#
#    Compare with -> barplot
#

x11()

d <- c(
#  0-6  7-13  14-20  21-27  28-34  35-41  42-48  49-55
#  ---  ----  -----  -----  -----  -----  -----  -----
                 16,
                 20,           29,
                 17,    27,    28,
                 19,    21,    34,
     3,          14,    26,    33,    35,    44,
     1,   11,    14,    21,    29,    38,    43,    55,
     4,   12,    18,    22,    32,    35,    48,    50
)

hist(d, breaks=seq(0, 56, by=7)-0.5)

z <- locator(1) # wait for mouse click or enter pressed

# -----------------------------------------------------

r <- runif(1000, -1, 1)

v <- r * r * sin(r)


hist(v, 
     breaks = 20,
     col    ="orange",
     main   ="Histogram",
     freq   = FALSE)



z <- locator(1) # wait for mouse click or enter pressed

