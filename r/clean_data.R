# Packages ----------------------------------------------------------------
pacman::p_load(tidyverse, lubridate)


# Paths -------------------------------------------------------------------
project <- file.path("D:/Documents/GitHub/nicaraguan-rulers")
data    <- file.path(project, "data")

# Read data ---------------------------------------------------------------
raw <- read_csv(file.path(project, "data", "nicaraguan-rulers-raw.csv"))

# Separte columns
rulers <- raw %>% 
    separate(period, c("start", "end"), sep = "-") 

# Write csv
rulers %>% 
    write_csv(path = file.path(data, "nicaraguan-rulers.csv")) 

rulers %>% 
    write_rds(path = file.path(data, "nicaraguan-rulers.rds"))
