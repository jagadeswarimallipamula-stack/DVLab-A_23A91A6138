#Load and Understand the dataset
data(iris)
str(iris)

#Basic 3D Scatter Plot (scatterplot3d)

#Install Necessary package
install.packages("scatterplot3d")

#Load library
library(scatterplot3d)

#Basic 3D plot
scatterplot3d(
  iris$Sepal.Length,
  iris$Sepal.Width,
  iris$Petal.Length
)

#3D plot with labels
scatterplot3d(
  iris$Sepal.Length,
  iris$Sepal.Width,
  iris$Petal.Length,
  main = "3D Scatter Plot of Iris Data",
  xlab = "Sepal Length",
  ylab = "Sepal Width",
  zlab = "Petal Length",
  pch = 16
)

#Colored 3D Scatter Plot by Species
colors <- as.numeric(iris$Species)

scatterplot3d(
  iris$Sepal.Length,
  iris$Sepal.Width,
  iris$Petal.Length,
  color = colors,
  pch = 16,
  main = "3D Scatter Plot of Iris Data"
)

legend(
  "topright",
  legend = levels(iris$Species),
  col = 1:3,
  pch = 16
)

#3D Plot Using 'cloud()' (Lattice)

#Load lattice package
library(lattice)

#Basic 3D cloud plot
cloud(
  Petal.Length ~ Sepal.Length * Sepal.Width,
  data = iris
)

#Colored cloud plot
cloud(
  Petal.Length ~ Sepal.Length * Sepal.Width,
  data = iris,
  groups = Species,
  auto.key = TRUE,
  main = "3D Cloud Plot of Iris Data"
)

#Multi-panel Scatter using 'xyplot()'
#Although 'xyplot()' is not true 3D, it allows multi-dimensional comparison
xyplot(
  Petal.Length ~ Sepal.Length * Sepal.Width,
  data = iris,
  pch = 16,
  col = "blue",
  layout = c(3,1)
)

#Interactive 3D plot Using Plotly (Advanced)

#Install plotly
install.packages("plotly")

#Load plotly
library(plotly)

#Interactive 3D scatter plot
plot_ly(
  iris,
  x = ~Sepal.Length,
  y = ~Sepal.Width,
  z = ~Petal.Length,
  color = ~Species,
  type = "scatter3d",
  mode = "markers"
)

#3D Plot with Size Encoding
plot_ly(
  iris,
  x = ~Sepal.Length,
  y = ~Sepal.Width,
  z = ~Petal.Length,
  color = ~Species,
  size = ~Petal.Width,
  type = "scatter3d",
  mode = "markers"
)

