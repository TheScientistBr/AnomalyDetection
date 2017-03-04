is.installed <- function(mypkg) is.element(mypkg, installed.packages()[,1]) 

if(!is.installed("devtools"))
        install.packages("devtools", dep = TRUE)

if(!is.installed("AnomalyDetection"))
        devtools::install_github("twitter/AnomalyDetection")

if(!is.installed("stringi"))
        install.packages("stringi")

if(!is.installed("magrittr"))
        install.packages("magrittr")

library("devtools")
library("AnomalyDetection")

data(raw_data)
res = AnomalyDetectionTs(raw_data, max_anoms=0.02, direction='both', plot=TRUE)
res$plot

AnomalyDetectionVec(raw_data[,2], max_anoms=0.02, period=1440, 
                    direction='both', only_last=FALSE, plot=TRUE)

res = AnomalyDetectionTs(raw_data, max_anoms=0.02, direction='both', 
                         only_last="day", plot=TRUE)
res$plot


