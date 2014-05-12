#Download and load data for Reproducible Research Class Project #1
#Activity Data 
internetSource <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip"
zipfilename = "activity.zip"
filename = "activity.csv"
fullfilename <- file.path(getwd(), zipfilename)
if (file.exists(fullfilename)){
  print("activity zip file already exists locally")
}else{
  print("file not found locally, so dowload from website")
  download.file(internetSource 
                , destfile=zipfilename)
}

#unzip contents to get single .csv file
unzip(zipfilename)

#print("File not found, downloading from website...")
if(exists("activitydata")){
  print("activity data already loaded into R")
}else{
  print("load activitydata")
  activitydata <- read.csv(filename, header = TRUE)
}