# Data Engineering Take Home Problem

## Overview

I chose to use R as my tool to answer the questions of each group. Also, I chose the first from
the Group A, second question from Group B and the first question from Group C.

## Group A

What percentage of flights were cancelled each year from 1999 to 2003?

*Answer:*

| | year | cancelledPercentage|
|-|-----|-------------------|
|1|1999|4.974|
|2|2000|4.826|
|3|2001|3.242|
|4|2002|1.650|
|5|2003|0.618|

[File](cancelled_figths_99_03.R)

## Group B

For the years 2002 to 2005, what is the ratio of carrier delay to elapsed travel time for each airline?

*Answer:*

| | UniqueCarrier | carrierRatio | year| Description|
|-|-------------|------------|----|-----------|
|1|AA|NaN|2002|American Airlines Inc.|
|2|AS|NaN|2002|Alaska Airlines Inc.|
|3|CO|NaN|2002|Continental Air Lines Inc.|
|4|DL|NaN|2002|Delta Air Lines Inc.|
|5|HP|NaN|2002|America West Airlines Inc. (Merged with US Airways 9/05. Stopped reporting 10/07.)|
|6|MQ|NaN|2002|American Eagle Airlines Inc.|
|7|NW|NaN|2002|Northwest Airlines Inc.|
|8|UA|NaN|2002|United Air Lines Inc.|
|9|US|NaN|2002|US Airways Inc. (Merged with America West 9/05. Reporting for both starting 10/07.)|
|10|WN|NaN|2002|Southwest Airlines Co.|
|11|AA|0.017259943|2003|American Airlines Inc.|
|12|AS|0.022602785|2003|Alaska Airlines Inc.|
|13|B6|0.012342178|2003|JetBlue Airways|
|14|CO|0.009569946|2003|Continental Air Lines Inc.|
|15|DH|0.040339267|2003|Independence Air|
|16|DL|0.015538278|2003|Delta Air Lines Inc.|
|17|EV|0.041944447|2003|Atlantic Southeast Airlines|
|18|FL|0.015010625|2003|AirTran Airways Corporation|
|19|HA|0.025153187|2003|Hawaiian Airlines Inc.|
|20|HP|0.021417792|2003|America West Airlines Inc. (Merged with US Airways 9/05. Stopped reporting 10/07.)|
|21|MQ|0.033058397|2003|American Eagle Airlines Inc.|
|22|NW|0.022096240|2003|Northwest Airlines Inc.|
|23|OO|0.033079489|2003|Skywest Airlines Inc.|
|24|TZ|0.012092892|2003|ATA Airlines d/b/a ATA|
|25|UA|0.012365120|2003|United Air Lines Inc.|
|26|US|0.013985809|2003|US Airways Inc. (Merged with America West 9/05. Reporting for both starting 10/07.)|
|27|WN|0.012364345|2003|Southwest Airlines Co.|
|28|XE|0.015507823|2003|Expressjet Airlines Inc.|
|29|AA|0.017567716|2004|American Airlines Inc.|
|30|AS|0.028992847|2004|Alaska Airlines Inc.|
|31|B6|0.008719672|2004|JetBlue Airways|
|32|CO|0.011251728|2004|Continental Air Lines Inc.|
|33|DH|0.025251522|2004|Independence Air|
|34|DL|0.019356528|2004|Delta Air Lines Inc.|
|35|EV|0.038327618|2004|Atlantic Southeast Airlines|
|36|FL|0.014094160|2004|AirTran Airways Corporation|
|37|HA|0.019756039|2004|Hawaiian Airlines Inc.|
|38|HP|0.023142108|2004|America West Airlines Inc. (Merged with US Airways 9/05. Stopped reporting 10/07.)|
|39|MQ|0.037095216|2004|American Eagle Airlines Inc.|
|40|NW|0.026439947|2004|Northwest Airlines Inc.|
|41|OH|0.043316349|2004|Comair Inc.|
|42|OO|0.041886705|2004|Skywest Airlines Inc.|
|43|TZ|0.011746582|2004|ATA Airlines d/b/a ATA|
|44|UA|0.014089383|2004|United Air Lines Inc.|
|45|US|0.018269450|2004|US Airways Inc. (Merged with America West 9/05. Reporting for both starting 10/07.)|
|46|WN|0.016590312|2004|Southwest Airlines Co.|
|47|XE|0.017378686|2004|Expressjet Airlines Inc.|
|48|AA|0.018476710|2005|American Airlines Inc.|
|49|AS|0.044588729|2005|Alaska Airlines Inc.|
|50|B6|0.012389971|2005|JetBlue Airways|
|51|CO|0.013117686|2005|Continental Air Lines Inc.|
|52|DH|0.017778927|2005|Independence Air|
|53|DL|0.019809378|2005|Delta Air Lines Inc.|
|54|EV|0.056974706|2005|Atlantic Southeast Airlines|
|55|F9|0.015174970|2005|Frontier Airlines Inc.|
|56|FL|0.020077759|2005|AirTran Airways Corporation|
|57|HA|0.017162807|2005|Hawaiian Airlines Inc.|
|58|HP|0.019114246|2005|America West Airlines Inc. (Merged with US Airways 9/05. Stopped reporting 10/07.)|
|59|MQ|0.032791363|2005|American Eagle Airlines Inc.|
|60|NW|0.037613013|2005|Northwest Airlines Inc.|
|61|OH|0.037768091|2005|Comair Inc.|
|62|OO|0.046451877|2005|Skywest Airlines Inc.|
|63|TZ|0.011515972|2005|ATA Airlines d/b/a ATA|
|64|UA|0.019099932|2005|United Air Lines Inc.|
|65|US|0.021637479|2005|US Airways Inc. (Merged with America West 9/05. Reporting for both starting 10/07.)|
|66|WN|0.016123820|2005|Southwest Airlines Co.|
|67|XE|0.018484201|2005|Expressjet Airlines Inc.|

[File](carrier_delay_ratio_02_05.R)

## Group C

What were the top 10 routes most likely to have a weather delay of over 10
minutes in December, 2005?
o Only considering routes with at least 20 flights that month.
o Include the origin and destination airport codes and city names in the
output listing.

*Answer:*

| | OriginIataCode | OriginCity | OriginAirport | DestIataCode | DestCity | DestAirport | WeatherDelayAvg|
|-|--------------|----------|-------------|------------|--------|-----------|---------------|
|1|MSP|Minneapolis|Minneapolis-St Paul Intl|FCA|Kalispell|Glacier Park Intl|21.17647|
|2|GRB|Green Bay|Austin Straubel International|MQT|<NA>|Marquette County Airport|20.48387|
|3|LGA|New York|LaGuardia|SAV|Savannah|Savannah International|15.60674|
|4|MEM|Memphis|Memphis International|SFO San Francisco|San Francisco International|15.00000|
|5|CID|Cedar Rapids|Eastern Iowa|DEN|Denver|Denver Intl|12.97917|
|6|JAC|Jackson|Jackson Hole|DEN|Denver|Denver Intl|12.90909|
|7|LGA|New York|LaGuardia|PWM|Portland Portland International Jetport|12.43478|
|8|BTR|Baton Rouge Baton Rouge Metropolitan, Ryan|LGA|New York|LaGuardia|12.34615|
|9|LGA|New York|LaGuardia|TYS|Knoxville|McGhee-Tyson|12.30769|
|10|BOS|Boston|Gen Edw L Logan Intl|JAX  Jacksonville|Jacksonville International\11.82258|

[File](weather_delay_dec_05.R)

## Further Analysis

- Top 10 airlines most likely to have a carrier delay of over 15 min from march to may, from 2003 to 2008?
- Which is the airline that was increase the most its amonth of fligths from 1987 to 2008?

