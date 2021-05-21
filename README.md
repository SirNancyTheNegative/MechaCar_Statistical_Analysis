# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

In order to determine the effect on mileage per gallon that any of the length or weight of a MechaCar, the angle of their spoiler, the clearance between the ground and the bottom of the chassis, and the all-wheel drive status of the Mechacar have, we performed a multivariable linear regression.

![Insert Picture](https://raw.githubusercontent.com/SirNancyTheNegative/MechaCar_Statistical_Analysis/main/Images/LinRegResults.png)

From this we can determine a number of useful measures. The first is the R-Squared values -- they average around 0.7, meaning that the data is around 30% varied from the expected results. While this isn't necessarily bad, it doesn't give the data any necessary hints to imply correlation. The second is the p-value. It is a significantly small value: 5.35e-11. This is well below most conventional limits, and because of that, we can state that we can reject the hypothesis that there isn't any correlation between any of the metrics and the mileage per gallon of a MechaCar.

On an individual level, two metrics stand out as having low individual p-values: vehicle_length and ground_clearance. As such, we can state that those metrics have little random variance when it comes to mileage per gallon, and thus, are reasonably statistically significant. These two metrics also happen to have particularly high positive t-values, so that suggests a positive correlation between those metrics and mpg.

The presence of these two metrics as evidence of correlation leads me to believe that the slope of the linear model is nonzero. Because these two metrics have correlation in the same direction, it's easy to make the assumption that the slope of the line will tend towards the positive. However, the lack of other decisive metrics suggests that this linear model is not acceptable. If it were as easy as making long cars with chassis above the ground, . Therefore, it's likely that there are other reasons for the differences in mpg variance aside from just the vehicle's length and ground clearance.

## Summary Statistics on Suspension Coils

In order to determine if the current suspension coil manufacturing data meets the design specifications, we produced data through the use of the "summarize" function in dplyr. Specifically, we want to look at the mean, median, variance, and standard deviation of each lot and of the production line as a whole.

Here is the data produced from summarizing all the data, regardless of lots:
![Insert Picture](https://raw.githubusercontent.com/SirNancyTheNegative/MechaCar_Statistical_Analysis/main/Images/totalSummary.png)

Here is the data produced from summarizing the data, divided into lots:
![Insert Picture](https://raw.githubusercontent.com/SirNancyTheNegative/MechaCar_Statistical_Analysis/main/Images/lotSummary.png)

MechaCar suspension coils are designed with the specification that there can be a maximum variance of 100 PSI. If we consider the entire set of suspension coils, the set passes this test, because the variance is only in the low 60s, and that's well within the parameters set by the specifications. However, if we take a look at Lot 3 specifically, it doesn't pass the specifications. As its variance is a whopping 170, that sits well beyond the limits set, and would fail the specifications. On the other hand, Lots 1 and 2 would pass, since their variances are rather low.

## T-Tests on Suspension Coils
