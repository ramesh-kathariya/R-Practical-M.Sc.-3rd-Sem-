

#loading Sci-Plot
library(sciplot)


#Setting Working Directory
setwd("E:/Ramesh/M.Sc III Sem/R Practical")

#loading data in csv format
water <- read.csv("homework_data.csv")
View(water)
summary(water)


#Creating Bargraph with Confidence Interval
bargraph.CI(water$Site, water$DO, 
            col = c("red", "green", "blue"), 
            xlab = "Site", ylab = "DO", main = "DO in Diffrent Sites")

abline(h=0) #abline (h=0) was used to lay a horizontal line at the base of height 0 in the plot

#####################################################################################

par(mfrow = c(1,2)) ##########To merge two plots

#Creating Histogram
hist(water$DO, col = "green", main = "", xlab = "DO", ylab = "Frequency")

# Creating histogram for each site seperately
hist(water$DO[water$Site == "I"], xlab = "DO", ylab = "Frequency",
     col = "red", main = "") # double equals to is used for locating a site specifically


par(mfrow = c(1,2)) ##########To merge two plots

hist(water$DO, col = "green", main = "", xlab = "DO", ylab = "Frequency")

hist(water$DO[water$Site == "II"],
     col = "red", main ="", xlab = "DO", ylab = "Frequency") ####Creating histogram for site II

par(mfrow = c(1,2))  ##########To merge two plots

hist(water$DO, col = "green", main = "", xlab = "DO", ylab = "Frequency")

hist(water$DO[water$Site == "III"],
     col = "red", main ="", xlab = "DO", ylab = "Frequency") ####Creating histogram for site III


par(mfrow = c(1,2))  ##########To merge two plots

### Creating boxplot
boxplot(water$DO, col = "red")
boxplot(water$DO~water$Site, col = 2:4) ### Creating box plot for each sites separately


dev.off() #to remove plots loaded in the R Studio


################Creating New Data Sets####################
temp <- c(22, 34, 40, 50, 40)
pptn <- c(20, 21, 30,  60, 28)

#Creating scatter plot
plot(temp, pptn, cex = 2, pch = 16, col = "blue",
     xlab = "Temperature", 
     ylab = "Precipitation") #Cex represents size, pch represents shape of points

text(35, 50, "Friends", cex = 3) # the syntaxt "text" is used to write text inside plot
text(35, 30, "***", cex = 4) #*** represents significant difference


#### Creating Stem Leaf Plot, It gives general idea of recurrence of a certain group
stem(temp) # stem and leaf plot
temp

# R has a lot of free data sets to learn for beginners, To see data embedded in R
data()


