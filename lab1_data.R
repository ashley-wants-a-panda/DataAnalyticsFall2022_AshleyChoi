EPI_data <- read.csv("~/Desktop/Fall 22/Data Analytics/Lab Files/Lab1/2010EPI_data.csv", skip=1, header=T)
#or
#EPI_data <- read.xlsx(”<path>/2010EPI_data.xlsx")
# Note: replace default data frame name – cannot start with numbers!
View(EPI_data)
#
attach(EPI_data) 	# sets the ‘default’ object
fix(EPI_data) 	# launches a simple data editor
EPI 			# prints out values EPI_data$EPI
tf <- is.na(EPI) # records True values if the value is NA
E <- EPI[!tf] # filters out NA values, new array

#other data
GRUMP_data <- read.csv("~/Desktop/Fall 22/Data Analytics/Lab Files/Lab1/GPW3_GRUMP_SummaryInformation_2010.csv")

summary(EPI) # stats
fivenum(EPI,na.rm=TRUE)
stem(EPI) # stem and leaf plot
hist(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw=1.)) # or try
bw <- "SJ"
rug(EPI)
#Use help(<command>), e.g. > help(stem)

plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(EPI)
qqline(EPI)

x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for tdsn")
qqline(x)

# Your exercise – intercompare: EPI, ENVHEALTH, ECOSYSTEM, DALY, AIR_H, WATER_H, AIR_E, WATER_E, BIODIVERSITY ** (subject to possible filtering…)

ENVHEALTH
summary(ENVHEALTH) # stats
fivenum(ENVHEALTH,na.rm=TRUE)
stem(ENVHEALTH) # stem and leaf plot
hist(ENVHEALTH)

plot(ecdf(ENVHEALTH), do.points=FALSE, verticals=TRUE)
par(pty="s") 
qqnorm(ENVHEALTH); qqline(ENVHEALTH)
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)


ECOSYSTEM
summary(ECOSYSTEM) # stats
fivenum(ECOSYSTEM,na.rm=TRUE)
stem(ECOSYSTEM) # stem and leaf plot
hist(ECOSYSTEM)

plot(ecdf(ECOSYSTEM), do.points=FALSE, verticals=TRUE)
par(pty="s") 
qqnorm(ECOSYSTEM); qqline(ECOSYSTEM)
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)


DALY
summary(DALY) # stats
fivenum(DALY,na.rm=TRUE)
stem(DALY) # stem and leaf plot
hist(DALY)

plot(ecdf(DALY), do.points=FALSE, verticals=TRUE)
par(pty="s") 
qqnorm(DALY); qqline(DALY)
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)


AIR_H
summary(AIR_H) # stats
fivenum(AIR_H,na.rm=TRUE)
stem(AIR_H) # stem and leaf plot
hist(AIR_H)

plot(ecdf(AIR_H), do.points=FALSE, verticals=TRUE)
par(pty="s") 
qqnorm(AIR_H); qqline(AIR_H)
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)


AIR_E
summary(AIR_E) # stats
fivenum(AIR_E,na.rm=TRUE)
stem(AIR_E) # stem and leaf plot
hist(AIR_E)

plot(ecdf(AIR_E), do.points=FALSE, verticals=TRUE)
par(pty="s") 
qqnorm(AIR_E); qqline(AIR_E)
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)


WATER_E
summary(WATER_E) # stats
fivenum(WATER_E,na.rm=TRUE)
stem(WATER_E) # stem and leaf plot
hist(WATER_E)

plot(ecdf(WATER_E), do.points=FALSE, verticals=TRUE)
par(pty="s") 
qqnorm(AIR_E); qqline(AIR_E)
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)



BIODIVERSITY
summary(BIODIVERSITY) # stats
fivenum(BIODIVERSITY,na.rm=TRUE)
stem(BIODIVERSITY) # stem and leaf plot
hist(BIODIVERSITY)

plot(ecdf(BIODIVERSITY), do.points=FALSE, verticals=TRUE)
par(pty="s") 
qqnorm(BIODIVERSITY); qqline(BIODIVERSITY)
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)



EPI
EPILand<-EPI[!Landlock]
EPILand
ELand <- EPILand[!is.na(EPILand)]
hist(ELand)
hist(ELand, seq(30., 95., 1.0), prob=TRUE)
plot(ecdf(ELand), do.points=FALSE, verticals=TRUE)
par(pty="s") 
qqnorm(ELand); qqline(ELand)
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)




# Your exercise: how to filter on EPI_regions or GEO_subregion?
EPI
View(EPI)
EPI_South_Asia <- EPI_regions["South Asia"]
GEO_South_Asia <- GEO_subregion["South Asia"]

detach(EPI_data)

View(GRUMP_data)
attach(GRUMP_data) 	# sets the ‘default’ object
fix(Area)
tf <- is.na(Continent) # records True values if the value is NA
E <- Continent[!tf] # filters out NA values, new array
E


summary(Continent) # stats
fivenum(Continent,na.rm=TRUE)
stem(Continent) # stem and leaf plot
hist(Continent)
hist(Continent, seq(2, 4, 6), prob=TRUE)
lines(density(Continent,na.rm=TRUE,bw=1.)) # or try
bw <- "SJ"
rug(Continent)
#Use help(<command>), e.g. > help(stem)

plot(ecdf(Continent), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(Continent)
qqline(Continent)

x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for tdsn")
qqline(x)

UNRegion
GRUMP_South_America <- UNRegion["South America"]



