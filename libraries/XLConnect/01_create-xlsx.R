library(XLConnect)


xlsx_name <- 'some.xlsx'

if (file.exists(xlsx_name)) file.remove(xlsx_name)

xlsx <- loadWorkbook(xlsx_name, create = TRUE)

createSheet(xlsx, name = '1st sheet');

saveWorkbook(xlsx)
