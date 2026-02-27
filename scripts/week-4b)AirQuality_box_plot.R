#data Visualization week-4b)
#Objective
#Load air quality dataset in R and visualize air quality parameters using box plots.
# Load the Data
data(airquality)

# Understand the Data
str(airquality)
View(airquality)
class(airquality)
?airquality

# Remove missing values
aq <- na.omit(airquality)

# -------------------------------
# Basic Box Plot (Ozone)
# -------------------------------
boxplot(aq$Ozone)

# Add Title & Labels
boxplot(aq$Ozone,
        main = "Box Plot for Ozone Concentration",
        ylab = "Ozone Level",
        col = "skyblue")

# -------------------------------
# Grouped Box Plot (Ozone by Month)
# -------------------------------
boxplot(Ozone ~ Month,
        data = aq,
        main = "Ozone Concentration by Month",
        xlab = "Month (5=May to 9=September)",
        ylab = "Ozone Level",
        col = c("pink", "green", "skyblue", "orange", "purple"))

# -------------------------------
# Multi-Variable Box Plot
# -------------------------------
boxplot(aq[, c("Ozone", "Solar.R", "Wind", "Temp")],
        main = "Multi Variable Box Plot - Air Quality Parameters",
        col = c("pink", "green", "skyblue", "orange"))

# -------------------------------
# GGPLOT2
# -------------------------------
library(ggplot2)

# Basic ggplot box plot
ggplot(aq,
       aes(x = factor(Month), y = Ozone)) +
  geom_boxplot() +
  labs(title = "Ozone by Month",
       x = "Month",
       y = "Ozone Level")

# Colored box plot by Month
ggplot(aq,
       aes(x = factor(Month), y = Ozone, fill = factor(Month))) +
  geom_boxplot() +
  theme_minimal()

# Using Manual Color Palette
ggplot(aq,
       aes(x = factor(Month), y = Ozone, fill = factor(Month))) +
  geom_boxplot() +
  scale_fill_manual(
    values = c(
      "5" = "red",
      "6" = "steelblue",
      "7" = "green",
      "8" = "orange",
      "9" = "purple"
    )
  ) +
  theme_minimal()

