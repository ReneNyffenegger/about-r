vec <- c('one', 'two', 'three', 'four', 'five')

'foo' %in% vec # FALSE
'two' %in% vec # TRUE

c('one', 'bar') %in% vec # TRUE FALSE
