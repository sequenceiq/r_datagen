#Sunnyside, 6h, 12h and 18h clusters, #250000

#location
n1<-250
multiplier<-1
dev<-0.02
x<-c(rnorm(n1,mean=37.72891,sd=dev))
y<-c(rnorm(n1,mean=-122.44503,sd=dev))

#datetime
start<-as.POSIXct(strptime("2014/01/01", "%Y/%m/%d"))
end<-as.POSIXct(strptime("2014/02/28", "%Y/%m/%d"))
dt=end-start
dd<-dt/2
t<-c(start+rnorm(80*multiplier)*h+dd/2, start+rnorm(100*multiplier)*h+dd, start+rnorm(70*multiplier)*h+dd*1.5)

#application feature
f<- sample(1:3, n1*multiplier, replace=T)

#user generation
u<- sample(1:10000, n1*multiplier, replace=T)

#event id generation
e<- sample(1:300*250*multiplier, n1*multiplier, replace=F)

#create CSV file
test <- data.frame(x,y,t,f,u,e)
write.table(test, file = "/tmp/sunnyside.csv", sep = ",")
