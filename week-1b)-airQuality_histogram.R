#week-1b)
#Load air quality dataset in R and visualize La Guardia Airport’s dialy maximum temperature using histogram.
airquality
class(airquality)
hist(airquality$Temp)

View(airquality)

hist(airquality$Temp,
     breaks=5,
     main= "Basic Histogram of Air Quality",
     xlab= "Temperature",
     ylab= "Range",
     labels=TRUE,
     col = "lightblue",
     border = "darkblue")

library(ggplot2)
ggplot(
  airquality,
  aes(x=Temp)
)+
  geom_histogram(
    bins = 12,
    fill = "lightblue",
    col = "darkblue")+
  # labs(
  #   title= "GGPLOT- Histogram for Air Quality",
  #   x = "Temperature",
  #   y = "Range" ) +
  facet_wrap(~ Month) +
  labs(
    title = "Monthly Temperature Distribution",
    x = "Temperature",
    y = "Frequency"
  ) +
  theme_light()

