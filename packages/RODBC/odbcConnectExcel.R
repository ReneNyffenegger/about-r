library(RODBC)

if (file.exists('test.xls'))
    suppress_output <- file.remove('test.xls')


df <- data.frame(
  a = c(1, 2, 3),
  b = c('foo', 'bar', 'baz')
)

xls <- odbcConnectExcel('test.xls', readOnly = FALSE)
sqlSave(
  xls, 
  df,
  rownames = FALSE,
  append   = FALSE
)

odbcClose(xls)
