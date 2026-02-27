#Data visualization- Week-3
# Load the built-in airquality dataset
data("airquality")

str(airquality)
View(airquality)
class(airquality)
?airquality

# Remove missing values
aq <- na.omit(airquality)

# Bar Chart

# Calculate monthly average ozone
monthly_ozone <- tapply(
  aq$Ozone,
  aq$Month,
  mean
)

# Display monthly averages
print(monthly_ozone)

#  Bar Plot
barplot(
  monthly_ozone,
  main = "Monthly Average Ozone Concentration",
  xlab = "Month (5=May, 6=June, 7=July, 8=August, 9=September)",
  ylab = "Average Ozone Level",
  col = "steelblue"
)

#  Grouped Bar Chart


# Convert Ozone values into categories
ozone_level <- cut(
  aq$Ozone,
  breaks = c(0, 30, 60, 100, 200),
  labels = c("Low", "Medium", "High", "Very High")
)

# Create frequency table
ozone_table <- table(aq$Month, ozone_level)

# Grouped Bar Plot
barplot(
  ozone_table,
  beside = TRUE,
  col = c("lightblue", "orange", "red", "darkred"),
  main = "Grouped Bar Chart of Ozone Levels by Month",
  xlab = "Month",
  ylab = "Frequency",
  legend = colnames(ozone_table)
)

# Stacked Bar Chart


barplot(
  ozone_table,
  beside = FALSE,
  col = c("lightblue", "orange", "red", "darkred"),
  main = "Stacked Bar Chart of Ozone Levels by Month",
  xlab = "Month",
  ylab = "Frequency",
  legend = colnames(ozone_table)
)
