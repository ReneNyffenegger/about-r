
x11()

heights <- c(  12, 15, 8, 9, 14, 13, 9 )

barplot(
  heights,
  names = c( 'A', 'B', 'C', 'D', 'E', 'F', 'G'  )
)


# wait for mouse click or enter pressed
z <- locator(1)
