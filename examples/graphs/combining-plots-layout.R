X11()

x <- seq(-1, 1, length.out=50)

layout(
  matrix ( c( 1, 1, 
              2, 3,
              2, 4),
  nrow=3, ncol=2,
  byrow=TRUE)
)

plot(x, sin(x*3))
plot(x, x^2-0.5*x)
plot(x, 10^x/10)
plot(x, 0.5*sin(x) + 0.25*(sin(3*x)) + 0.125*(sin(5*x)))

z <- locator(1)
