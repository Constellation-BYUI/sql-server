FROM mcr.microsoft.com/mssql/server:2019-latest
 
USER mssql
CMD ["/opt/mssql/bin/sqlservr"]