Activity Monitorring Report
========================================================

This is a Knitted report for the Reproducible Research class Homework Assignment #1.

Loading and preprocessing the data
========================================================

Show any code that is needed to
 1.
Load the data (i.e.  read.csv() )

```r
echo = TRUE
# Download and load data for Reproducible Research Class Project #1 Activity
# Data
# setwd('C://Users//akeller.HARDEN//Documents//GitHub//RepData_PeerAssessment2')
internetSource <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip"
# zipfilename = 'activity.zip'
fullzipfilename <- file.path(getwd(), "activity.zip")
fullfilename <- file.path(getwd(), "activity.csv")

# fullfilename <- file.path(getwd(), zipfilename)

if (file.exists(fullzipfilename)) {
    print("activity zip file previously downloade and exists locally.")
} else {
    print("file not found locally, so dowload from website")
    download.file(internetSource, destfile = fullzipfilename)
}
```

```
## [1] "activity zip file previously downloade and exists locally."
```

```r

# unzip contents to get single .csv file
unzip(fullzipfilename)

if (exists("activitydata")) {
    print("activity data was previously loaded into R.")
} else {
    print("load activitydata")
    activitydata <- read.csv(fullfilename, header = TRUE)
}
```

```
## [1] "load activitydata"
```

```r
print("verify data loaded")
```

```
## [1] "verify data loaded"
```

```r
summary(activitydata)
```

```
##      steps               date          interval   
##  Min.   :  0.0   2012-10-01:  288   Min.   :   0  
##  1st Qu.:  0.0   2012-10-02:  288   1st Qu.: 589  
##  Median :  0.0   2012-10-03:  288   Median :1178  
##  Mean   : 37.4   2012-10-04:  288   Mean   :1178  
##  3rd Qu.: 12.0   2012-10-05:  288   3rd Qu.:1766  
##  Max.   :806.0   2012-10-06:  288   Max.   :2355  
##  NA's   :2304    (Other)   :15840
```

```r
str(activitydata)
```

```
## 'data.frame':	17568 obs. of  3 variables:
##  $ steps   : int  NA NA NA NA NA NA NA NA NA NA ...
##  $ date    : Factor w/ 61 levels "2012-10-01","2012-10-02",..: 1 1 1 1 1 1 1 1 1 1 ...
##  $ interval: int  0 5 10 15 20 25 30 35 40 45 ...
```


 2.
Process/transform the data (if necessary) into a format suitable for your analysis

```r
echo = TRUE
print("coding in process")
```

```
## [1] "coding in process"
```


 
What is mean total number of steps taken per day?
========================================================

For this part of the assignment, you can ignore the missing values in the dataset.
 1.
Make a histogram of the total number of steps taken each day

```r
echo = TRUE
print("coding in process")
```

```
## [1] "coding in process"
```


 2.
Calculate and report the mean and median total number of steps taken per day

```r
echo = TRUE
print("coding in process")
```

```
## [1] "coding in process"
```


 
What is the average daily activity pattern?
========================================================
 1.Make a time series plot (i.e.  type = "l" ) of the 5-minute interval (x-axis) and the average number of steps taken, averaged across all days (y-axis)

```r
echo = TRUE
print("coding in process")
```

```
## [1] "coding in process"
```


 2.Which 5-minute interval, on average across all the days in the dataset, contains the maximum number of steps?

```r
echo = TRUE
print("coding in process")
```

```
## [1] "coding in process"
```


 
Imputing missing values
========================================================

Note that there are a number of days/intervals where there are missing values (coded as  NA ). The presence of missing days may introduce bias into some calculations or summaries of the data.
 1.Calculate and report the total number of missing values in the dataset (i.e. the total number of rows with  NA s)

```r
echo = TRUE
print("coding in process")
```

```
## [1] "coding in process"
```


 2.Devise a strategy for filling in all of the missing values in the dataset. The strategy does not need to be sophisticated. For example, you could use the mean/median for that day, or the mean for that 5-minute interval, etc.

```r
echo = TRUE
print("coding in process")
```

```
## [1] "coding in process"
```


 3.Create a new dataset that is equal to the original dataset but with the missing data filled in.

```r
echo = TRUE
print("coding in process")
```

```
## [1] "coding in process"
```


 4.Make a histogram of the total number of steps taken each day and Calculate and report the mean and median total number of steps taken per day. Do these values differ from the estimates from the first part of the assignment? What is the impact of imputing missing data on the estimates of the total daily number of steps?

```r
echo = TRUE
print("coding in process")
```

```
## [1] "coding in process"
```


 
Are there differences in activity patterns between weekdays and weekends?
========================================================

For this part the  weekdays()  function may be of some help here. Use the dataset with the filled-in missing values for this part.
 1.Create a new factor variable in the dataset with two levels -- "weekday" and "weekend" indicating whether a given date is a weekday or weekend day.

```r
echo = TRUE
print("coding in process")
```

```
## [1] "coding in process"
```


 2.Make a panel plot containing a time series plot (i.e.  type = "l" ) of the 5-minute interval (x-axis) and the average number of steps taken, averaged across all weekday days or weekend days (y-axis). The plot should look something like the following, which was creating using simulated data:

```r
echo = TRUE
print("coding in process")
```

```
## [1] "coding in process"
```


other examples...delete me todo
========================================================

```r
echo = TRUE
summary(cars)
```

```
##      speed           dist    
##  Min.   : 4.0   Min.   :  2  
##  1st Qu.:12.0   1st Qu.: 26  
##  Median :15.0   Median : 36  
##  Mean   :15.4   Mean   : 43  
##  3rd Qu.:19.0   3rd Qu.: 56  
##  Max.   :25.0   Max.   :120
```


You can also embed plots, for example:


```r
echo = TRUE
plot(cars)
```

![plot of chunk unnamed-chunk-14](figure/unnamed-chunk-14.png) 

