setwd("C:/Users/it24101491/Downloads/it24101491/Exercise.txt")
data<-read.table("Exercise.txt",header = TRUE)
fix(data)
attach(data)



#Q1(calculate mean and standed deviation)
mn<-mean(Weight)
standed_devision<-sd(Weight)
print(mn)
print(standed_devision)


#Q2( samples of size 6 and calculate the sample)

sample_means <- numeric(25)
sample_sds <- numeric(25)
for (i in 1:25) {
  smpl<-sample(Weight,size=6,replace=TRUE)
 
  sample_means[i] <- mean(smpl)
  sample_sds[i] <- sd(smpl)
}

cat("Sample Means:", sample_means, "\n")
cat("Sample Standard Deviations:", sample_sds, "\n")



#q3(e the mean and standard deviation of the 25 sample means)

mnsmpl <- mean(sample_means)
sdsmpl <- sd(sample_means)


cat("Mean of Sample Means:", mnsmpl, "\n")
cat("Standard Deviation of Sample Means:", sdsmpl, "\n")


cat("\nTrue Population Mean:", mn, "\n")
cat("True Population Standard Deviation:", standed_devision, "\n")

