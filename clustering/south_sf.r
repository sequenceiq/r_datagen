#South SF, 6h, 12h and 18h clusters, #400000

#location
n1<-400
multiplier<-1
dev<-0.03
x<-c(rnorm(n1,mean=37.65338,sd=dev))
y<-c(rnorm(n1,mean=-122.40555,sd=dev))

#datetime
start<-as.POSIXct(strptime("2014/01/01", "%Y/%m/%d"))
end<-as.POSIXct(strptime("2014/02/28", "%Y/%m/%d"))
dt<-end-start
dd<-dt/2
h<-dd/24
t<-c(start+rnorm(100*multiplier)*h+dd/2, start+rnorm(200*multiplier)*h+dd, start+rnorm(100*multiplier)*h+dd*1.5)

#application feature
f<- sample(1:3, n1*multiplier, replace=T)

#user generation
u<- sample(1:10000, n1*multiplier, replace=T)

#event id generation
e<- sample(1:300*n1*multiplier, n1*multiplier, replace=T)

#create CSV file
test <- data.frame(x,y,t,f,u,e)
write.table(test, file = "/tmp/south_sf.csv", sep = ",")
