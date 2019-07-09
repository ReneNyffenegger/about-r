library(ggplot2)
library(tidyr  )
library(dplyr  )

data <- data.frame(
   year   = c(2001, 2002, 2003, 2004, 2005, 2006),
   apple  = c(  11,    9,   10,    7,    7,    8),
   banana = c(  14,   15,   12,   12,   11,   14),
   cherry = c(   7,    7,    9,   10,    8,    9),
   junk   = c(   3,    2,    4,    6,    3,    8)
);

gathered_data <- data                             %>%
   select (year, apple, banana, cherry)           %>%  # get rid of junk
   gather (key = 'fruit', value = 'val', -year);


ggplot(
  gathered_data,
  aes(
    x = year,
    y = val
  )
) +
geom_line(
     aes(color = fruit),
     size = 2
) +
scale_color_manual(
    values = c(
       '#d35c23',
       '#b2b112',
       '#340289')
) +
theme_minimal(
)
