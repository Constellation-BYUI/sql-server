docker build -t sqlserver .
docker run -p 1433:1433 -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=SQLrocks@cit" -e "MSSQL_PID=Express" -it sqlserver 
# docker run –name "container1”" -e "ACCEPCT_EULA=Y" -e "SA_PASSWORD=SQLrocks@cit" -e "MSSQL_PID=Developer" -p "2901:1433" -d "Microsoft:mssql2019"