library(dplyr)

mechacars <- read_csv("../Resources/MechaCar_mpg.csv")
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacars))

suspensioncoil <- read_csv("../Resources/Suspension_Coil.csv")

total_summary <- suspensioncoil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary <- suspensioncoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

t.test(suspensioncoil$PSI, mu=1500)
t.test(x = (suspensioncoil %>% filter(Manufacturing_Lot == "Lot1"))$PSI, y =suspensioncoil$PSI, mu=0)
t.test(x = (suspensioncoil %>% filter(Manufacturing_Lot == "Lot2"))$PSI, y =suspensioncoil$PSI, mu=0)
t.test(x = (suspensioncoil %>% filter(Manufacturing_Lot == "Lot3"))$PSI, y =suspensioncoil$PSI, mu=0)
