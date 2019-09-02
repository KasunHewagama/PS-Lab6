data<-read.table("C:/Users/it18165180/Desktop/IT18165180/Data - Lab 6.txt",header = TRUE)
#if we don't mention (header = TRUE) the data set take the header as well
#data is the name of a variable

attach(data)
#attaching table data(To deal with data)

View(data)

mean(data$Nicotine)
#mean is getting by the $Nicotine

var(data$Nicotine)
#variance = var

#Q2 begins
#generate the samples and assign to a matrix named 'sample'
samples<-c()
#matrix name
n<-c()
#column name

for(i in  1:30){
  s<-sample(data$Nicotine,5)
  #in here 5 means the no.of observations
  samples<-cbind(samples,s)
  #samples combined with s
  n<-c(n,paste('s',i))
  #column names paste as s into no.of sample
}
colnames(samples)<-n
#function


#Q3 begins
s.means<-colMeans(samples)
s.means

s.vars<-apply(samples,2,var)
s.vars