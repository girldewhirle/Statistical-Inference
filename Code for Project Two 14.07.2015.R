# load pre-reqs
library(plyr)
library(dplyr)
library(tidyr)
library(ggplot2)

# Load the ToothGrowth data and perform some basic exploratory data analyses
data("ToothGrowth")
# Provide a basic summary of the data.
## group by supplement and doses
ToothGrowthv2<-group_by(ToothGrowth,supp,dose)
## calculate mean of each sub group
datasummary<-summarise(ToothGrowthv2,mean(len, na.rm = TRUE),sd(len))
## rename columns
colnames(datasummary)[1]<-"Supplement"
colnames(datasummary)[2]<-"Dose"
colnames(datasummary)[3]<-"Mean_Length"
colnames(datasummary)[4]<-"SD_Length"
# Use confidence intervals and/or hypothesis tests to compare tooth growth by supp and dose. (Only use the techniques from class, even if there's other approaches worth considering)

# State your conclusions and the assumptions needed for your conclusions. 

# Some criteria that you will be evaluated on
# Did you  perform an exploratory data analysis of at least a single plot or table highlighting basic features of the data?
# Did the student perform some relevant confidence intervals and/or tests?
# Were the results of the tests and/or intervals interpreted in the context of the problem correctly? 
# Did the student describe the assumptions needed for their conclusions?