multiplier<-1000

#Sunnyside, 6h, 12h and 18h clusters, #250000

#location
n1<-250
dev<-0.02
x<-c(rnorm(n1,mean=37.72891,sd=dev))
y<-c(rnorm(n1,mean=-122.44503,sd=dev))

#datetime
start<-as.POSIXct(strptime("2014/01/01", "%Y/%m/%d"))
end<-as.POSIXct(strptime("2014/02/28", "%Y/%m/%d"))
dt<-end-start
dd<-dt/2
h<-dd/24
t<-c(start+rnorm(80*multiplier)*h+dd/2, start+rnorm(100*multiplier)*h+dd, start+rnorm(70*multiplier)*h+dd*1.5)

#application feature
f<- sample(1:3, n1*multiplier, replace=T)

#user generation
u<- sample(1:10000, n1*multiplier, replace=T)

#event id generation
e<- sample(1:300*250*multiplier, n1*multiplier, replace=T)

#create CSV file
test <- data.frame(x,y,t,f,u,e)
write.table(test, file = "/tmp/sunnyside.csv", sep = ",")

#South SF, 6h, 12h and 18h clusters, #400000

#location
n1<-400
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

#Stanford, 6h, 12h and 18h clusters, #400000

#location
n1<-300
dev<-0.03
x<-c(rnorm(n1,mean=37.42934,sd=dev))
y<-c(rnorm(n1,mean=-122.16660,sd=dev))

#datetime
start<-as.POSIXct(strptime("2014/01/01", "%Y/%m/%d"))
end<-as.POSIXct(strptime("2014/02/28", "%Y/%m/%d"))
dt<-end-start
dd<-dt/2
h<-dd/24
t<-c(start+rnorm(50*multiplier)*h+dd/2, start+rnorm(100*multiplier)*h+dd, start+rnorm(150*multiplier)*h+dd*1.5)

#application feature
f<- sample(1:3, n1*multiplier, replace=T)

#user generation
u<- sample(1:10000, n1*multiplier, replace=T)

#event id generation
e<- sample(1:300*n1*multiplier, n1*multiplier, replace=T)

#create CSV file
test <- data.frame(x,y,t,f,u,e)
write.table(test, file = "/tmp/stanford.csv", sep = ",")

#Mountain View, 6h, 12h and 18h clusters, #400000

#location
n1<-300
dev<-0.03
x<-c(rnorm(n1,mean=37.38653,sd=dev))
y<-c(rnorm(n1,mean=-122.08111,sd=dev))

#datetime
start<-as.POSIXct(strptime("2014/01/01", "%Y/%m/%d"))
end<-as.POSIXct(strptime("2014/02/28", "%Y/%m/%d"))
dt<-end-start
dd<-dt/2
h<-dd/24
t<-c(start+rnorm(50*multiplier)*h+dd/2, start+rnorm(100*multiplier)*h+dd, start+rnorm(150*multiplier)*h+dd*1.5)

#application feature
f<- sample(1:3, n1*multiplier, replace=T)

#user generation
u<- sample(1:10000, n1*multiplier, replace=T)

#event id generation
e<- sample(1:300*n1*multiplier, n1*multiplier, replace=T)

#create CSV file
test <- data.frame(x,y,t,f,u,e)
write.table(test, file = "/tmp/mountain_view.csv", sep = ",")

#Palo Alto, 6h, 12h and 18h clusters, #400000

#location
n1<-500
dev<-0.03
x<-c(rnorm(n1,mean=37.38653,sd=dev))
y<-c(rnorm(n1,mean=-122.08111,sd=dev))

#datetime
start<-as.POSIXct(strptime("2014/01/01", "%Y/%m/%d"))
end<-as.POSIXct(strptime("2014/02/28", "%Y/%m/%d"))
dt<-end-start
dd<-dt/2
h<-dd/24
t<-c(start+rnorm(150*multiplier)*h+dd/2, start+rnorm(200*multiplier)*h+dd, start+rnorm(150*multiplier)*h+dd*1.5)

#application feature
f<- sample(1:3, n1*multiplier, replace=T)

#user generation
u<- sample(1:10000, n1*multiplier, replace=T)

#event id generation
e<- sample(1:300*n1*multiplier, n1*multiplier, replace=T)

#create CSV file
test <- data.frame(x,y,t,f,u,e)
write.table(test, file = "/tmp/palo_alto.csv", sep = ",")
