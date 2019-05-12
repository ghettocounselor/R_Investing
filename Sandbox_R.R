lineChart(`BRK-B`, line.type = 'h', theme = 'white')
barChart(`BRK-B`, bar.type = 'hlc', TA = NULL)

candleChart(`BRK-B`, TA=NULL, subset = '2019')
candleChart(AAPL, TA=NULL, subset = '2019')
candleChart(`BRK-B`, TA=c(addMACD()), subset = '2019')
?add_EMA
chartSeries(`BRK-B`, 
            type = c("auto", "matchsticks"), 
            subset = '2018-01::',
            show.grid = TRUE,
            major.ticks='auto', minor.ticks=TRUE,
            multi.col = TRUE,
            TA=c(addMACD(),addVo()))

BRKB <- as.xts(`BRK-B`)
names(BRKB)
names(BRKB) <- c("BRKB.Open"   ,  "BRKB.High"   ,  "BRKB.Low"   ,   "BRKB.Close"  ,  "BRKB.Volume",  "BRKB.Adjusted")
names(BRKB)

chartSeries(`BRK-B`, 
            type = c("auto", "matchsticks"), 
            subset = '2018-01::',
            show.grid = TRUE,
            major.ticks='auto', minor.ticks=TRUE,
            multi.col = FALSE,
            TA=c(addMACD(),addVo()))

BRKB.EMA.20<- EMA(BRKB$BRKB.Close, n=20)
BRKB.EMA.50<- EMA(BRKB$BRKB.Close, n=50)
BRKB.EMA.100<- EMA(BRKB$BRKB.Close, n=100)
BRKB.EMA.200<- EMA(BRKB$BRKB.Close, n=200)

addTA(BRKB.EMA.20, on=1, col = "green")
addTA(BRKB.EMA.50, on=1, col = "blue")
addTA(BRKB.EMA.100, on=1, col = "yellow")
addTA(BRKB.EMA.200, on=1, col = "red")



