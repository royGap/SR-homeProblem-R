library(RCurl)
library(dplyr)

years = c("1999", "2000", "2001", "2002", "2003")
matrix.headers <- c("years", "cancelled percentage")
fligths.matrix <- matrix(, nrow = length(years), ncol = 2, dimnames = list(NULL, matrix.headers))

for (i in 1:length(years)) {
  year = years[i]
  flights.file.name <- paste(year, ".csv.bz2", sep = "")
  
  if (!file.exists(flights.file.name)) {
    flights.file.url <- paste("http://stat-computing.org/dataexpo/2009/", year, ".csv.bz2", sep = "")
    download.file(flights.file.url, destfile = flights.file.name)
  }
  
  flights.data <- read.csv(flights.file.name, header = TRUE, sep = ',')
  total.fligths <- nrow(flights.data)
  cancelled.figths.number <- nrow(filter(flights.data, Cancelled == 1))
  percentage.cancelled.figths <- (cancelled.figths.number/total.fligths) * 100
  
  fligths.matrix[i, 1] <- year
  fligths.matrix[i, 2] <- percentage.cancelled.figths
}

flights.dataframe <- as.data.frame(fligths.matrix)

print(flights.dataframe)