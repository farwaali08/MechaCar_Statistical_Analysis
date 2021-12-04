# Load dplyr package
library(dplyr)

# Part 1: Linear Regression to Predict MPG 

# Import and read MechaCar_mpg.csv file as a dataframe
mechdata <- read.csv(file = '/Users/farwaali/Documents/R_Analysis/Challenge/MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)
head(mechdata)

# Perform linear regression using lm() function
lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechdata)

# Determine p-value and the r-squared value for linear regression model
summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechdata))


# Part 2: Suspension Coil Analysis

# Import and read Suspension_Coil.csv file as a dataframe
coils <- read_csv(file='/Users/farwaali/Documents/R_Analysis/Challenge/Suspension_Coil.csv',show_col_types = FALSE)
head(coils)

# Creates total_summary dataframe 
total_summary <-coils%>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
head(total_summary)

# Creates lot_summary dataframe 
lot_summary <-coils%>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups = 'keep')
head(lot_summary)


# Part 3: T-Tests on Suspension Coils

# All lots (sample vs population mean)
t.test(coils$PSI,mu=1500)

# Lot 1
t.test(subset(coils,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)

# Lot 2
t.test(subset(coils,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)

# Lot 3
t.test(subset(coils,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)
