library(RCurl)
library(dplyr)

df <- data.frame()
flights.file.name <- "2005.csv.bz2"

if (!file.exists(flights.file.name)) {
  flights.file.url <- "http://stat-computing.org/dataexpo/2009/2005.csv.bz2"
  download.file(flights.file.url, destfile = flights.file.name)
}

flights.data <- read.csv(flights.file.name, header = TRUE, sep = ',')

if (!file.exists("airports.csv")) {
  airports.url <- "http://stat-computing.org/dataexpo/2009/airports.csv"
  download.file(airports.url, destfile = "airports.csv")
}

airports <-read.csv("airports.csv", header = TRUE, sep = ',')

december.data <- flights.data[flights.data$Month == 12,]

delay.routes <- december.data %>%
  group_by_at(vars(Origin, Dest)) %>%
  summarise(WeatherDelayAvg = mean(WeatherDelay), total = n()) %>%
  filter(total >= 20) %>%
  filter(WeatherDelayAvg > 10) %>%
  arrange(desc(WeatherDelayAvg)) %>%
  head(10)

weather.delay.routes <- delay.routes %>%
  merge(airports, by.x = "Origin", by.y = "iata") %>%
  select(OriginIataCode = Origin,
         OriginCity = city,
         OriginAirport = airport,
         Dest,
         WeatherDelayAvg) %>%
  merge(airports, by.x = "Dest", by.y = "iata") %>%
  select(OriginIataCode,
         OriginCity,
         OriginAirport,
         DestIataCode = Dest,
         DestCity = city,
         DestAirport = airport,
         WeatherDelayAvg) %>%
  arrange(desc(WeatherDelayAvg))

print(weather.delay.routes)