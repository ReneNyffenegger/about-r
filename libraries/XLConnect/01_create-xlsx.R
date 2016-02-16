library(XLConnect)

xlsx_name  <- 'some.xlsx'
sheet_name <- '1st sheet'

if (file.exists(xlsx_name)) file.remove(xlsx_name)

xlsx <- loadWorkbook(xlsx_name, create = TRUE)

createSheet(xlsx, name = sheet_name);

saveWorkbook(xlsx)
