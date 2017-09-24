library(RCurl)
library(dplyr)

years = c("2002", "2003", "2004", "2005")
df <- data.frame()
carriers.url <- "http://stat-computing.org/dataexpo/2009/carriers.csv"

if (!file.exists("carriers.csv")) {
  download.file(carriers.url, destfile = "carriers.csv")
}

carriers <-read.csv("carriers.csv", header = TRUE, sep = ',')

for (i in 1:length(years)) {
  year = years[i]
  flights.file.name <- paste(year, ".csv.bz2", sep = "")
  
  if (!file.exists(flights.file.name)) {
    flights.file.url <- paste("http://stat-computing.org/dataexpo/2009/", year, ".csv.bz2", sep = "")
    download.file(flights.file.url, destfile = flights.file.name)
  }
  
  flights.data <- read.csv(flights.file.name, header = TRUE, sep = ',')
  airlines <- flights.data %>% 
    group_by(UniqueCarrier) %>%
    summarise(carrierRatio = (mean(CarrierDelay, na.rm = TRUE)/mean(ActualElapsedTime, na.rm = TRUE)),
              year = year) %>%
    merge(carriers, by.x = "UniqueCarrier", by.y = "Code")
  
  df <- rbind(df, airlines)
}  

print(df)

