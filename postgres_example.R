library(RPostgres)
library(dplyr) 
db_name <- "Turtles"
conn <- dbConnect(RPostgres::Postgres(), dbname=db_name)
flights_db <- tbl(conn, "raw")
beep <- flights_db %>% 
  filter(time > '2021-09-30' & station_id == "V30B0154DCFB") %>%
  collect()

tag <- flights_db %>% 
  filter(tagid == "2D2A5207") %>%
  collect()