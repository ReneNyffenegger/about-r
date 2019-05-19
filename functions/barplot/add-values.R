set.seed(28)
values = round(rnorm(6, 18, 3.5), 1);
names(values) <- c('abc', 'def', 'ghi', 'jkl', 'mno', 'pqr');

y_coords = barplot(values)

text(y_coords, values, labels=values, pos=1)
