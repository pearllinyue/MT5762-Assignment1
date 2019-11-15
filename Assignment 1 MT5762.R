#Read the data into R
potplants<-read.csv("Desktop/MT5762/Assignment 1/potplants_MT5762.csv")
head(potplants)
#Drop NA in the data
potplants<-na.omit(potplants)
dim(potplants)
#Summarise the data
##install.packages("dplyr")
library(dplyr)
potplants_sum<-summary(potplants)
write.csv(potplants_sum, file = "Desktop/MT5762/Assignment 1/potplants_sum.csv")
potplants_sd<-summarise_all(group_by(potplants,Group),sd)
potplants_mean<-summarise_all(group_by(potplants,Group),mean)
cv<-summarise_all(group_by(potplants,Group),funs(sd(.)/mean(.)))
write.csv(cv, file = "Desktop/MT5762/Assignment 1/cv.csv")
#Plot the data
#install.packages("ggplot2")
library(ggplot2)
Ti_Ga<-ggplot(potplants) + geom_point(mapping = aes(x = Ti, y = Ga, color = Group))
ggsave("potplants_Ti_Ga", Ti_Ga, "pdf")
Ti_Ga
Ti_Rb<-ggplot(potplants) + geom_point(mapping = aes(x = Ti, y = Rb, color = Group))
ggsave("potplants_Ti_Rb", Ti_Rb, "pdf")
Ti_Rb
Ti_Ta<-ggplot(potplants) + geom_point(mapping = aes(x = Ti, y = Ta, color = Group))
ggsave("potplants_Ti_Ta", Ti_Ta, "pdf")
Ti_Ta
Ga_Rb<-ggplot(potplants) + geom_point(mapping = aes(x = Ga, y = Rb, color = Group))
ggsave("potplants_Ga_Rb", Ga_Rb, "pdf")
Ga_Rb
Ga_Ta<-ggplot(potplants) + geom_point(mapping = aes(x = Ga, y = Ta, color = Group))
ggsave("potplants_Ga_Ta", Ga_Ta, "pdf")
Ga_Ta
Rb_Ta<-ggplot(potplants) + geom_point(mapping = aes(x = Rb, y = Ta, color = Group))
ggsave("potplants_Rb_Ta", Rb_Ta, "pdf")
Rb_Ta

#Anova
library(stats)
#1 Ti
boxplot(potplants$Ti~factor(potplants$Group), xlab = "Group", ylab = "Ti")
#Oneway Test
oneway.test(potplants$Ti~factor(potplants$Group))
potplants_Ti.aov=aov(potplants$Ti~factor(potplants$Group))
summary(potplants_Ti.aov)
#Normality test
##qqPlot
Ti_qqplot<-lm(potplants$Ti~potplants$Group, data=potplants)
qqPlot(Ti_qqplot)
#Bartlett Test
bartlett.test(potplants$Ti~factor(potplants$Group))
#Post-hoc (TurkeyHSD)
potplants_Ti_posthoc=TukeyHSD(potplants_Ti.aov)
potplants_Ti_posthoc
plot(potplants_Ti_posthoc)

#2 Ga
boxplot(potplants$Ga~factor(potplants$Group), xlab = "Group", ylab = "Ga")
#Oneway Test
oneway.test(potplants$Ga~factor(potplants$Group))
potplants_Ga.aov=aov(potplants$Ga~factor(potplants$Group))
summary(potplants_Ga.aov)
#Normality test (qqPlot)
Ga_qqplot<-lm(potplants$Ga~potplants$Group, data=potplants)
qqPlot(Ga_qqplot)
#Bartlett Test
bartlett.test(potplants$Ga~factor(potplants$Group))
#Post-hoc (TurkeyHSD)
potplants_Ga_posthoc=TukeyHSD(potplants_Ga.aov)
potplants_Ga_posthoc
plot(potplants_Ga_posthoc)

#3 Rb
boxplot(potplants$Rb~factor(potplants$Group), xlab = "Group", ylab = "Rb")
#Oneway Test
oneway.test(potplants$Rb~factor(potplants$Group))
potplants_Rb.aov=aov(potplants$Rb~factor(potplants$Group))
summary(potplants_Rb.aov)
#Normality test (qqPlot)
Rb_qqplot<-lm(potplants$Rb~potplants$Group, data=potplants)
qqPlot(Rb_qqplot)
#Bartlett Test
bartlett.test(potplants$Rb~factor(potplants$Group))
#Post-hoc (TurkeyHSD)
potplants_Rb_posthoc=TukeyHSD(potplants_Rb.aov)
potplants_Rb_posthoc
plot(potplants_Rb_posthoc)

#4 Ta
boxplot(potplants$Ta~factor(potplants$Group), xlab = "Group", ylab = "Ta")
#Oneway Test
oneway.test(potplants$Ta~factor(potplants$Group))
potplants_Ta.aov=aov(potplants$Ta~factor(potplants$Group))
summary(potplants_Ta.aov)
#Normality test (qqPlot)
Ta_qqplot<-lm(potplants$Ta~potplants$Group, data=potplants)
qqPlot(Ta_qqplot)
#Bartlett Test
leveneTest(potplants$Ta~factor(potplants$Group))
#Post-hoc (TurkeyHSD)
potplants_Ta_posthoc=TukeyHSD(potplants_Ta.aov)
potplants_Ta_posthoc
plot(potplants_Ta_posthoc)