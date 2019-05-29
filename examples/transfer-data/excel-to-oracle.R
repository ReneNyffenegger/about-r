library(xlsx    )
library(ROracle )

xlsx_file <- paste0(Sys.getenv('TEMP'), '/data4oracle.xlsx');

download.file(
      'https://raw.githubusercontent.com/ReneNyffenegger/about-r/master/examples/transfer-data/data4oracle.xlsx',
       dest =  xlsx_file,
       mode = 'wb'       # We're downloading a binary file, thus: wb
);


xlsx_data <- read.xlsx(
                xlsx_file               ,
                sheetIndex      =     1 ,
                header          =  TRUE   
              );

#
# Check data types and column names:
str(xlsx_data);

#
#  Fix date (convert numbers to dates)
#
xlsx_data$dat <- as.Date(xlsx_data$dat, origin = '1899-12-30');

ora_drv <- dbDriver('Oracle');
ora_con <- dbConnect(ora_drv, 'rene', 'rene', dbname = 'ora18');

#
#   Specify the name of the table to be created.
#
#   The R-Oracle driver creates the table in the case of the
#   given name. So, if the given table name is lowercase,
#   it will also be created in lowercase.
#   This is usually undesired because it forces one to
#   put the table name into quotes.
#   Thus, I use an upper case table name here:
#
ora_table_name <- 'XLSX_IMPORT';


#
#    For the same reason, the column names
#    are converted to uppercase, too.
#
colnames(xlsx_data) <- toupper(colnames(xlsx_data));

if (dbExistsTable(ora_con, ora_table_name))
    dbRemoveTable(ora_con, ora_table_name);


#
#   Prevent
#     Error in .oci.ValidateZoneInEnv(FALSE) : 
#       environment variable 'ORA_SDTZ()' must be set to the same time zone
#       region as the the environment variable 'TZ()'
Sys.setenv(TZ       = 'GMT');
Sys.setenv(ORA_SDTZ = 'GMT');


#
#   Note, dbWriteTable has parameter
#     nrows
#   that specifies how many rows are
#   read to determine a column's datatype.
#
#   Apparently,it's not possible to specify
#   a field type with field.types, thus
#   the parameter is commented
#
#   Also, because of setting TZ to GMT, the difference
#   between the local hour and the timezone seems
#   to be taken into account.
#
#   Check with
#     alter session set nls_timestamp_format = 'dd.mm.yyyy hh24:mi:ss';
#     select * from xlsx_import;
#
dbWriteTable(
        ora_con,
        name        = ora_table_name,
        value       = xlsx_data,
    #   field.types = c('DAT' = 'DATE'),
        row.names   = FALSE
);
