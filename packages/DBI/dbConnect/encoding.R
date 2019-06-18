# useDB = 'SQLite';
  useDB = 'MSSQL/odbc';

if (useDB == 'SQLite'    ) library(RSQLite);
if (useDB == 'MSSQL/odbc') library(odbc   );

testEncoding <- function(encoding) {

   if (useDB == 'SQLite') {
      con <- dbConnect(
               RSQLite::SQLite()  ,
             ':memory:'           ,
               encoding = encoding
            );
   }
   if (useDB == 'MSSQL/odbc') {
       con <- dbConnect(odbc(),
               driver   ='SQL Server'               ,
               server   = Sys.getenv("COMPUTERNAME"),
               database ='st_zh'                    ,
               encoding = encoding
      );
   }


   print(paste('Testing encoding', encoding));

   DBI::dbExecute(con, "create table tab(val varchar(10))"  );

   DBI::dbExecute(con, "insert into tab values ('Zürich')");

   cnt <- dbGetQuery(con,"select count(*) from tab where val like '%ü%'");
   print(paste('  cnt =', cnt));

   val <- dbGetQuery(con, "select val from tab");
   print(paste('  val =', val));

   if (useDB == 'SQLite') {
      hex <- dbGetQuery(con, "select hex(val) hex from tab");
      print(paste('  hex =', hex));
   }
   if (useDB == 'MSSQL/odbc') {
      hex <- dbGetQuery(con, "select convert(varchar(20), cast(val as varbinary), 2) as hex from tab");
      print(paste('  hex =', hex));
   }

   DBI::dbExecute(con, "drop table tab");
   dbDisconnect(con);

}

testEncoding('iso-8859-1');
testEncoding('UTF-8'     );
