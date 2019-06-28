library(RSQLite)
library(RMySQL )
library(ROracle)
library(odbc   )

connections <- list(

  ansi      = ANSI(),

  sqlite    = dbConnect(RSQLite::SQLite(), 
              dbname   = ':memory:'),

  mysql     = dbConnect(MySQL(),
              user     = 'rene',
              password = 'rene',
              dbname   = 'tq84_db',
              host     = 'localhost'),

  oracle    = dbConnect(dbDriver('Oracle'),
              user     = 'rene',
              password = 'rene',
              dbname   = 'ora18'),

  sqlserver = dbConnect(odbc(),
              driver   ='SQL Server' ,
              server   = Sys.getenv('COMPUTERNAME'),
              database ='tq84_db'
  )

);


cat('typeof(x)  ');
cat(sprintf('%-15s', names(connections)), sep='');
cat("\n");
cat(paste(rep('-', 5*15+11), collapse=''));
cat("\n");

for (v in list(42L, 42.42, 'foo bar', TRUE)) {

   cat(sprintf('%-11s', typeof(v)));

   for (con in connections) {
      cat(sprintf('%-15s', dbDataType(con, v)));
   }

   cat("\n");
}
#
#  typeof(x)  ansi           sqlite         mysql          oracle         sqlserver      
#  --------------------------------------------------------------------------------------
#  integer    INT            INTEGER        bigint         INT            INT            
#  double     DOUBLE         REAL           double         DOUBLE         FLOAT          
#  character  TEXT           TEXT           text           TEXT           varchar(255)   
#  logical    SMALLINT       INTEGER        tinyint        SMALLINT       BIT            
