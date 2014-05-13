Personal Activity Monitorring Report, single device from October-November 2012
========================================================

This is a Knitted report for the Reproducible Research class Homework Assignment #1. It represents analysis of Peronal Activity
of the number of steps collected over five minute intervals from a single device/person over a two month period from October through
November of 2012.

Loading and preprocessing the data
========================================================

Show any code that is needed to
 
*(1)*  Load the data (i.e.  read.csv() )

```r
echo = TRUE
# Download the Activity data if it doesn't already exist
# setwd('C://Users//akeller.HARDEN//Documents//GitHub//RepData_PeerAssessment2')
internetSource <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip"
fullzipfilename <- file.path(getwd(), "activity.zip")
fullfilename <- file.path(getwd(), "activity.csv")
if (file.exists(fullzipfilename)) {
    # print('data previously downloaded and exists locally')
} else {
    # print('file not found locally, so dowload from website')
    download.file(internetSource, destfile = fullzipfilename)
}
```

```
## NULL
```

```r

# unzip contents to get single .csv file
unzip(fullzipfilename)

# load data into R
if (!exists("activity")) {
    activity <- read.csv(fullfilename, header = TRUE)
} else {
    print("activity already loaded")
}
str(activity)
```

```
## 'data.frame':	17568 obs. of  3 variables:
##  $ steps   : int  NA NA NA NA NA NA NA NA NA NA ...
##  $ date    : Factor w/ 61 levels "2012-10-01","2012-10-02",..: 1 1 1 1 1 1 1 1 1 1 ...
##  $ interval: int  0 5 10 15 20 25 30 35 40 45 ...
```


*(2)*  Process/transform the data (if necessary) into a format suitable for your analysis.

add a datimetime variable as a POSIXt class which combines date and hours/minutes from interval

```r
echo = TRUE
activity$datetime <- strptime(paste(activity$date, sprintf("%04d", activity$interval))  #left pad to 4 digits
, format = "%Y-%m-%d %H%M")
str(activity)
```

```
## 'data.frame':	17568 obs. of  4 variables:
##  $ steps   : int  NA NA NA NA NA NA NA NA NA NA ...
##  $ date    : Factor w/ 61 levels "2012-10-01","2012-10-02",..: 1 1 1 1 1 1 1 1 1 1 ...
##  $ interval: int  0 5 10 15 20 25 30 35 40 45 ...
##  $ datetime: POSIXlt, format: "2012-10-01 00:00:00" "2012-10-01 00:05:00" ...
```


 
What is mean total number of steps taken per day?
========================================================

For this part of the assignment, you can ignore the missing values in the dataset.
*(1)*  Make a histogram of the total number of steps taken each day

```r
echo = TRUE
# Daily Average (53 days => missing 8 days)
davg <- aggregate(steps ~ date, activity, mean)  #this is average per interval/ need daily average
dmedian <- aggregate(steps ~ date, activity, median)
# daily <- cbind(davg, dmedian)

AverageDailySteps <- davg$steps

# head(davg)
hist(AverageDailySteps, breaks = 53, col = "green", xlab = "Day", ylab = "Average Steps", 
    axes = TRUE, plot = TRUE)
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 


*(2)*  Calculate and report the mean and median total number of steps taken per day

```r
echo = TRUE
```


 
What is the average daily activity pattern?
========================================================
*(1)*  Make a time series plot (i.e.  type = "l" ) of the 5-minute interval (x-axis) and the average number of steps taken, averaged across all days (y-axis)

```r
echo = TRUE
```


*(2)*  Which 5-minute interval, on average across all the days in the dataset, contains the maximum number of steps?

```r
echo = TRUE
plot(davg, ylab = "yyyy", xlab = "xxxxx", main = "mainnnn")
```

![plot of chunk unnamed-chunk-6](figure/unnamed-chunk-6.png) 


 
Imputing missing values
========================================================

Note that there are a number of days/intervals where there are missing values (coded as  NA ). The presence of missing days may introduce bias into some calculations or summaries of the data.

*(1)*  Calculate and report the total number of missing values in the dataset (i.e. the total number of rows with  NA s)

```r
echo = TRUE
```


*(2)*  Devise a strategy for filling in all of the missing values in the dataset. The strategy does not need to be sophisticated. For example, you could use the mean/median for that day, or the mean for that 5-minute interval, etc.

```r
echo = TRUE

```


*(3)*  Create a new dataset that is equal to the original dataset but with the missing data filled in.

```r
echo = TRUE

```


*(4)*  Make a histogram of the total number of steps taken each day and Calculate and report the mean and median total number of steps taken per day. Do these values differ from the estimates from the first part of the assignment? What is the impact of imputing missing data on the estimates of the total daily number of steps?

```r
echo = TRUE

```


 
Are there differences in activity patterns between weekdays and weekends?
========================================================

For this part the  weekdays()  function may be of some help here. Use the dataset with the filled-in missing values for this part.
*(1)*  Create a new factor variable in the dataset with two levels -- "weekday" and "weekend" indicating whether a given date is a weekday or weekend day.

```r
echo = TRUE


# activity$daytype <- '' factor(activity$daytype)
activity$daytype <- factor(ifelse(weekdays(activity[, "datetime"]) == "Saturday"  #if Saturday or Sunday
 | weekdays(activity[, "datetime"]) == "Sunday", 
    "Weekend"  #then Weekend
, "Weekday"))

# factor(activity$daytype) activity <- cbind(activity,dt)
table(activity$daytype)
```

```
## 
## Weekday Weekend 
##   12960    4608
```

```r


# echo = FALSE #no need to see listing of all of the daytype values
# factor(activity$daytype) echo = TRUE

# table(activity$daytype)

```


*(2)* Panel plot containing a time series plot (i.e.  type = "l" ) of the 5-minute interval (x-axis) and the average number of steps taken, averaged across all weekday days or weekend days (y-axis). The plot should look something like the following, which was creating using simulated data:

```r
echo = TRUE
```
