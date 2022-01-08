library(xts)
Sys.setenv(TZ='UTC')
## data1 = xts hand measured dataset
ttmp <- read.table("data1.csv")
data1 <- xts(ttmp[,2], as.POSIXct(ttmp[,1]))

## data2 = xts 10 mins equidistant logger measured dataset
ttmp <- read.table("data2.csv")
data2 <- xts(ttmp[,2], as.POSIXct(ttmp[,1]))

plot(data2, type = "h")


RPcompare(data1)
