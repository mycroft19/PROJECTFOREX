library(quantmod)

USDAUD <- getSymbols("DEXUSEU", src = "FRED")
View(DEXUSEU)
EURUSD<-unclass(DEXUSEU)
View(DEXUSEU)
class(DEXUSEU)
head(DEXUSEU)
tail(DEXUSEU)
plot(DEXUSEU)

library(forecast)
r=DEXUSEU
X1=ts(r,frequency(12))  
plot.ts(X1)
p1=auto.arima(X1)
summary(p1)
q=forecast(p1,h=30)
q
plot(q)

