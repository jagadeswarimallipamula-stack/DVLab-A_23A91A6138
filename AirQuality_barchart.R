# Data Visualization Lab – Week 3b)

## Objective
#b)Load air quality dataset in R and visualize ozone concentration in air.


# Load the Dataset
data(airquality)

# Inspect the Dataset
?airquality
head(airquality)
str(airquality)
class(airquality)

# Calculate Mean Ozone per Month (remove missing values)
mean_ozone <- tapply(
  airquality$Ozone,
  airquality$Month,
  mean,
  na.rm = TRUE
)

# Display calculated values
mean_ozone

# Create Bar Chart
barplot(
  mean_ozone,
  main = "Average Ozone Concentration by Month",
  xlab = "Month",
  ylab = "Mean Ozone Level",
  col = "purple"
)

