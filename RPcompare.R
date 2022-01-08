## Compare two time series

## Round data to 10 minutes
RPcompare <- function(x) {
    require(xts)
    timestamp <- index(x)
    ## Round timestampt to 10 minutes
    to_minutes <- 10
    hourly_timestamp <- round.POSIXt(timestamp, "hours")
    rounded_timestamp <- hourly_timestamp -
        round(as.numeric(hourly_timestamp - timestamp) / to_minutes) * (to_minutes * 60)
    xts(coredata(x), rounded_timestamp) 
}
