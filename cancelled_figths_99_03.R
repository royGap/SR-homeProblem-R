library(RCurl)
library(dplyr)

years <- c("1999", "2000", "2001", "2002", "2003")
df <- data.frame()

for (i in 1:length(years)) {
  year <- years[i]
  flights.file.name <- paste(year, ".csv.bz2", sep = "")
  
  if (!file.exists(flights.file.name)) {
    flights.file.url <- paste("http://stat-computing.org/dataexpo/2009/", year, ".csv.bz2", sep = "")
    download.file(flights.file.url, destfile = flights.file.name)
  }
  
  flights.data <- read.csv(flights.file.name, header = TRUE, sep = ',', nrows = 50000)
  
  total.fligths <- nrow(flights.data)
  cancelled.figths.number <- nrow(filter(flights.data, Cancelled == 1))
  flights.cancelled.year <- data.frame(year = year,
    cancelledPercentage = (cancelled.figths.number/total.fligths) * 100)
  
  df <- rbind(df, flights.cancelled.year)
}
 

print(df)