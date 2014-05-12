#Download and load data for Reproducible Research Class Project #1
#Activity Data
#setwd("C://Users//akeller.HARDEN//Documents//GitHub//RepData_PeerAssessment2")
internetSource <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip"
#zipfilename = "activity.zip"
fullzipfilename <- file.path(getwd(), "activity.zip")
fullfilename <- file.path(getwd(), "activity.csv")

#fullfilename <- file.path(getwd(), zipfilename)

if (file.exists(fullzipfilename)){
  print("activity zip file previously downloade and exists locally.")
}else{
  print("file not found locally, so dowload from website")
  download.file(internetSource 
                , destfile=fullzipfilename)
}

#unzip contents to get single .csv file
unzip(fullzipfilename)

if(exists("activitydata")){
  print("activity data was previously loaded into R.")
}else{
  print("load activitydata")
  activitydata <- read.csv(fullfilename, header = TRUE)
}


