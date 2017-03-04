set.seed(555)

x <- 1:20

A <- 15
B <- 0.4
E <- runif(length(x), -1, 1) * (2 + x/20) 

y <- A + B*x + E

X11()

plot(x, y, pch=16, col='blue')

model <- lm(y~x)

model

abline(model, col='red'  , lwd=3)
abline(A, B , col='green', lwd=3)

# wait for mouse click or enter pressed
z <- locator(1)
