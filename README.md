# MechaCar_Statistical_Analysis 🚙

## OVERVIEW

This project utilizes R to complete a statistical review of production data for an automotive company. The ultimate goal is to be able to provide actionable insights that may help improve the design of a troubled prototype.

The main objectives include the following:

* Identifying the variables that best predict the prototype's fuel economy (in mpg)
* Determining if the manufacturing process is consistent across all production lots
* Determining if the manufacturing lots are statistically different from the mean population

A proposal has also been prepared to conduct an additional study that compares the performance of the prototype against vehicles from other manufacturers.

## TOOLS & RESOURCES

### DATA

* [MechaCar_mpg.csv](https://github.com/farwaali08/MechaCar_Statistical_Analysis/blob/34a41ae1b5ef94a135f329e15d31d7fd9025bc89/Resources/MechaCar_mpg.csv)
* [Suspension_Coil.csv](https://github.com/farwaali08/MechaCar_Statistical_Analysis/blob/34a41ae1b5ef94a135f329e15d31d7fd9025bc89/Resources/Suspension_Coil.csv)

### SOFTWARE
* RStudio 2021.09.1+372 "Ghost Orchid" 
  * `dplyr` package 

## Linear Regression to Predict MPG

A multiple regression analysis was used to predict which of the below variables are most likely to contribute a non-random amount of variance to the fuel economy (mpg). The `Pr(>|t|)` value represents the probability for each variable, and is accompanied by a significance code that indicates the significance level.

![alt_text](https://github.com/farwaali08/MechaCar_Statistical_Analysis/blob/35c372561abdb97beebf05f975d1e74c1df4215e/Resources/Images/Linear%20Regression.png)

* `Vehicle Length` and `Ground Clearance`, with p-values of 2.6x10<sup>-12</sup> and 5.21x10<sup>-8</sup>, respectively, are the most statistically significant, and are the most likely to contribute a non-random amount of variance to the dataset. The intercept is also statistically significant, however that is not meaningful to this analysis.
* **The slope of the linear model is not considered to be zero.** If there is a significant linear relationship between the dependent and independent variables, the slope will **not** equal zero. The null hypothesis here is that the slope of the regression line is equal to zero.The p-value of the linear model (5.35X10<sup>-11</sup>) is much smaller than the value for an "extreme" level of significance, which provides sufficient statistical evidence to reject the null hypothesis (H<sub>0</sub>).
* **This model is fairly effective at predicting fuel economy for prototypees.** The r-squared value (R<sup>2</sup>= 0.7149) indicates that roughly 71.5% of the variation in the mpg dataset can be explained by the input variables. Although it can be improved, it is fairly efficient.

## Summary Statistics on Suspension Coils

To determine if the manufacturing process is consistent across all production lots, the weight capacities of multiple suspension coils were tested, and the summary statistics are provided below. The first table (A) represents data across all lots, and the second table (B) summarizes the data per lot.

A) **All Manufacturing Lots**

![alt_text](https://github.com/farwaali08/MechaCar_Statistical_Analysis/blob/35c372561abdb97beebf05f975d1e74c1df4215e/Resources/Images/SC1.png)

B) **Data per Lot** 

![alt_text](https://github.com/farwaali08/MechaCar_Statistical_Analysis/blob/35c372561abdb97beebf05f975d1e74c1df4215e/Resources/Images/SC2.png)

The design specifications dictate that the variance of the suspension coils must not exceed 100 pounds per square inch (PSI). Although the data for the total population indicates that this criteria is being met (var= 62.29), it is evident in the "Data per Lot" summary that Lot 3 does not meet this requirement (var= 170.29).

## T-Tests on Suspension Coils

A series of t-tests were completed to determine if the manufacturing lots are statistically different from the mean population. The results are summarized below, and assume a 95% confidence interval/5% significance (p ≤ 0.05).

**All Manufacturing Lots Against Population Mean**

![alt_text](https://github.com/farwaali08/MechaCar_Statistical_Analysis/blob/35c372561abdb97beebf05f975d1e74c1df4215e/Resources/Images/ttest1.png)

The p-value for this test is 1, which aside from being greater than the significance level, indicates that it exactly equals the null hypothesis value. Therefore, the null hypothesis cannot be rejected. This demonstrates that the PSI for Lot 1 is statiscally similar to the population mean.

**Lot 1**

![alt_text](https://github.com/farwaali08/MechaCar_Statistical_Analysis/blob/35c372561abdb97beebf05f975d1e74c1df4215e/Resources/Images/ttest2.png)

As the p-value (0.069) is greater than the significance level, there is insufficient evidence to reject the null hypothesis. This suggests that the PSI across all manufacturing lots is statiscally similar to the population mean.

![alt_text](https://github.com/farwaali08/MechaCar_Statistical_Analysis/blob/35c372561abdb97beebf05f975d1e74c1df4215e/Resources/Images/ttest3.png)

![alt_text](https://github.com/farwaali08/MechaCar_Statistical_Analysis/blob/35c372561abdb97beebf05f975d1e74c1df4215e/Resources/Images/ttest4.png)

## Study Design: MechaCar vs Competition
