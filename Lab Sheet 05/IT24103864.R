getwd()
setwd("C:\\Users\\dilmi\\Desktop\\IT24103864")
Delivery.Times<-read.table("Exercise - Lab 05.txt",header =TRUE)
hist(Delivery.Times$Delivery_Time_,breaks=seq(20,70,by=5),right=TRUE,main="Histogram of Delivery Times",xlab="Delivery Times")
delivery_freq<-table(cut(Delivery.Times$Delivery_Time_,breaks=seq(20,70,by=5)))
cum_freq<-cumsum(delivery_freq)
plot(seq(20,70,by=5)[-1],cum_freq="o",main="Cumulative Frequency Polygon",
     xlab="Delivery Times",ylab="Cumulative Frequency",
     xlim=c(20,70),ylim=c(0,max(cum_freq)+5)








setwd("C:\\Users\\dilmi\\Desktop\\IT24103864")
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)

# Histogram
hist(Delivery_Times$Delivery, 
     breaks=9, 
     xlim=c(20, 70), 
     main="Histogram of Delivery Times", 
     xlab="Delivery Time", 
     col="lightblue", 
     right=TRUE)

# The histogram suggests that the delivery times are bimodal, 
# with a peak around 40 minutes and another smaller peak around 50-60 minutes. 
# The distribution is slightly right-skewed, as there are fewer instances of 
# delivery times above 60 minutes.

#Calculate cumulative frequency
delivery_cut <- cut(Delivery_Times$Delivery, breaks=seq(20, 70, by=5), right=TRUE)

freq_table <- table(delivery_cut)
cum_freq <- cumsum(freq_table)

bin_midpoints <- seq(22.5, 67.5, by=5)

plot(bin_midpoints, cum_freq, type="o", 
     col="blue", xlab="Delivery Time", ylab="Cumulative Frequency", 
     main="Cumulative Frequency Polygon (Ogive)")
