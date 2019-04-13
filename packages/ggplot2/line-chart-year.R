X11()

library(ggplot2)

df = data.frame (
      name   = c('abc', 'abc', 'abc', 'abc', 'abc',
                 'def', 'def', 'def', 'def', 'def',
                 'ghi', 'ghi', 'ghi', 'ghi', 'ghi',
                 'jkl', 'jkl', 'jkl', 'jkl', 'jkl',
                 'mno', 'mno', 'mno', 'mno', 'mno',
                 'pqr', 'pqr', 'pqr', 'pqr', 'pqr'),

      year   = c(2015 , 2016 , 2017 , 2018 , 2019 ,
                 2015 , 2016 , 2017 , 2018 , 2019 ,
                 2015 , 2016 , 2017 , 2018 , 2019 ,
                 2015 , 2016 , 2017 , 2018 , 2019 ,
                 2015 , 2016 , 2017 , 2018 , 2019 ,
                 2015 , 2016 , 2017 , 2018 , 2019 
                 ),

      val_1  = c(   8 ,   10,    11 ,    9 ,    8 ,  # abc
                    7 ,    5,     5 ,    6 ,    7 ,  # def
                    6 ,    8,     7 ,    4 ,    9 ,  # ghi
                    8 ,    7,     6 ,    7 ,    6 ,  # jkl
                    5 ,    4,     6 ,    8 ,    9 ,  # mno
                    4 ,    6,     5,     3 ,    2 ), # pqr

      val_2  = c(   7 ,   11,     9 ,    9 ,    8 ,  # abc
                    6 ,    7,     7 ,    4 ,    9 ,  # def
                    7 ,    5,     5 ,    9 ,   10 ,  # ghi
                    8 ,    7,     8 ,    6 ,    3 ,  # jkl
                    4 ,    5,     6 ,    7 ,    8 ,  # mno
                    5 ,    7,     6 ,    8 ,    4 )  # pqr

    )

s <- subset(df, name %in% c('def', 'ghi', 'jkl'))

ggplot(data = s, aes(x = year, y = val_1, group = name, color = name)) + geom_line()

# ggsave('img/line-chart-year.png', width=12, height=12, units='cm', dpi=72)

cat ("Press enter...")
readLines("stdin", n = 1)
