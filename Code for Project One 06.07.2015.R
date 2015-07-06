## code to investigate CLT
## define lambda
lambda<-0.2
## mean of exponential is 1/lambda
meanexp<-1/lambda
## STANDARD DEVIATION of exponential is 1/lambda
sdexp<-1/lambda
## variance of exponential square of sdexp
varexp<-sdexp^2
## looking at an exponential distribution
snapshotexp<-rexp(40,lambda)
hist(snapshotexp)

## mean of snapshot
meansnap<-mean(snapshotexp)
## sd of snapshot
sdsnap<-sd(snapshotexp)
## variance of snapshot
varsnap<-var(snapshotexp)

## now taking 1000 means from 1000 samples
## expect mean to be close to population mean therefore
expectedmean<-meanexp
## expect variance of the 1000 means to be population variance/sample size (thought this was sigma^2/sqrt(n))
expectedvariance<-25/40

## run exp simulation 1000 times and take mean
expmeanvalues<-NULL

for (i in 1:1000){expmeanvalues<-c(expmeanvalues,mean(rexp(40,lambda)))}

meansim<-mean(expmeanvalues)
variancesim<-var(expmeanvalues)

hist(expmeanvalues)

## so mean of distribution of means is
print(meansim)
## which is close to the theoretical mean of the exponential
## variance of distribuition of means is
print(variancesim)
## which is close to the theoretical variance calculated when using a sample size of 40