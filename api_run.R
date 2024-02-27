source("functions/api_postgres.R")
library(DBI)
start <- Sys.time()

####SETTINGS#####
my_token <- "f98853d782f0f4d4a823ca4f1b17dfbe589fb5d7b2b4e73d65036475adc0fa07"
db_name <- "Turtles"
myproject <- "PA Temperature Forest Turtles" #this is your project name on your CTT account
conn <- dbConnect(RPostgres::Postgres(), dbname=db_name,port = 5432, user = "wor5079", password = "$n@ppinTurtl3")
################

get_my_data(my_token, "C:/pg_Data/Data" , conn, myproject) #the folder path is where you want your downloaded files to go
outpath <- "C:/pg_Data/base/16398"
update_db(conn, outpath, myproject)
dbDisconnect(conn)

#source("functions/filecatch.R")
#findfiles(outpath, "directory path where you want your caught files to go")

time_elapse <- Sys.time() - start
print(time_elapse)

