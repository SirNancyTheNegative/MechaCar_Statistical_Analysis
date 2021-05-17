# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

In order to determine the effect on mileage per gallon that any of the length or weight of a MechaCar, the angle of their spoiler, the clearance between the ground and the bottom of the chassis, and the all-wheel drive status of the Mechacar have, we performed a multivariable linear regression.

![Insert Picture](https://raw.githubusercontent.com/SirNancyTheNegative/MechaCar_Statistical_Analysis/main/Images/LinRegResults.png)

From this we can determine a number of useful measures. The first is the R-Squared values -- since they are high, but not very much so, this implies there is a fair amount of variance with each metric as listed above, but not very much of it that could call into question the validity of the rest of the data. The second is the p-value. It is a significantly small value: 5.35e-11. This is well below most conventional limits, and because of that, we can state that we can reject the hypothesis that there isn't any correlation between any of the metrics and the mileage per gallon of a MechaCar.

On an individual level, two metrics stand out as having low individual p-values: vehicle_length and ground_clearance. As such, we can state that those metrics have little random variance when it comes to mileage per gallon, and thus, are reasonably statistically significant. These two metrics also happen to have particularly high positive t-values, so that suggests a positive correlation between those metrics and mpg.

The presence of these two metrics as evidence of correlation leads me to believe that the slope of the linear model is nonzero. Because these two metrics have correlation in the same direction, it's easy to make the assumption that the slope of the line will tend towards the positive. However, the lack of other decisive metrics suggests that this linear model is not acceptable. If it were as easy as making long cars with chassis above the ground, . Therefore, it's likely that there are other reasons for the differences in mpg variance aside from just the vehicle's length and ground clearance.

## Summary Statistics on Suspension Coils

