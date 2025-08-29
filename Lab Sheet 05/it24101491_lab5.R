
#q1(Import the dataset a data frame)


setwd("C:\\Users\\it24101491\\Downloads\\it24101491_lab5")
Delivery_Times<-read.table("Exercise - Lab 05.txt",header=TRUE,sep = ",")


#q2(Draw a histogram lower limit is 20 and upper limit is 70. Use right open)


breaks <- seq(20, 70, length.out = 10)    #Define breaks for right-open intervals
hist(Delivery_Times$Delivery_Time_.minutes.,breaks = breaks, main = "Histogram of Delivery Times",right = FALSE,xlab = "Delivery Time", ylab = "Frequency")


#q3

#The distribution of delivery times is approximately symmetric with a peak around 40–45 minutes.


#q4(Draw a cumulative frequency polygon)

upper_bounds <- breaks[-1]
hist_obj <- hist(Delivery_Times$Delivery_Time_.minutes., breaks = breaks, right = FALSE, plot = FALSE)

cum_freq <- cumsum(hist_obj$counts)
length(cum_freq) == length(upper_bounds)
plot(upper_bounds,cum_freq,  type = "o",col = "blue", main = "Cumulative Frequency Polygon (Ogive)", xlab = "Delivery Time (minutes)", ylab = "Cumulative Frequency")

