library(odbc   )

sqlServer = dbConnect(odbc(),
            driver   ='SQL Server' ,
            server   = Sys.getenv('COMPUTERNAME'),
            database ='tq84_db'
);
