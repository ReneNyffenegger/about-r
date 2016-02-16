library(XLConnect)

xlsx_name  <- 'some.xlsx'
sheet_name <- '1st sheet'

xlsx <- loadWorkbook(xlsx_name, create = FALSE)

data <- data.frame(
   col_1 = c("Foo", "Bar", "Baz"),
   col_2 = c(  11 ,   22 ,   33 ),
   col_3 = c("abc", "def", "ghi"))

writeWorksheet(xlsx, data=data, sheet=sheet_name, startRow=1, startCol=1)

saveWorkbook(xlsx)
