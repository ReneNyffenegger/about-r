things <- c(
    'socks' ,
    'chairs',
    'socks' ,
    'lamps' ,
    'chairs',
    'socks' ,
    'socks'
);

countOfThings <- table(things);

barplot(countOfThings);
