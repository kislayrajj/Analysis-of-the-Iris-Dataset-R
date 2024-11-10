# Set working directory
setwd("C:/Users/kisla/OneDrive/Desktop/Assignments/R LAB/Projects/iris dataset csv/here")

# Install necessary packages (if not already installed)
if(!require(tidyverse)) install.packages("tidyverse")  # For data manipulation and visualization
if(!require(ggplot2)) install.packages("ggplot2")      # For data visualization
if(!require(dplyr)) install.packages("dplyr")          # For data manipulation

# Unzip and load the iris dataset
iris_data <- unzip("C:/Users/kisla/OneDrive/Desktop/Assignments/R LAB/Projects/iris dataset csv/here/iris_dataset_csv.zip", 
                   exdir = "C:/Users/kisla/OneDrive/Desktop/Assignments/R LAB/Projects/iris dataset csv/here/iris_dataset_csv")
iris_files <- list.files("C:/Users/kisla/OneDrive/Desktop/Assignments/R LAB/Projects/iris dataset csv/here/iris_dataset_csv", full.names = TRUE)

# Read the Iris dataset
iris_data <- read.csv(iris_files[1])
head(iris_data)  # Check first few rows of dataset

# Basic data information:
# Structure of the dataset
str(iris_data)

# Summary statistics
summary(iris_data)

# Visualizations
library(ggplot2)

# Histogram for Sepal Length
ggplot(iris_data, aes(x = SepalLengthCm)) +
  geom_histogram(binwidth = 0.2, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Sepal Length")

# Histogram for Sepal Width
ggplot(iris_data, aes(x = SepalWidthCm)) +
  geom_histogram(binwidth = 0.2, fill = "lightgreen", color = "black") +
  labs(title = "Distribution of Sepal Width")

# Histogram for Petal Length
ggplot(iris_data, aes(x = PetalLengthCm)) +
  geom_histogram(binwidth = 0.2, fill = "lightcoral", color = "black") +
  labs(title = "Distribution of Petal Length")

# Histogram for Petal Width
ggplot(iris_data, aes(x = PetalWidthCm)) +
  geom_histogram(binwidth = 0.2, fill = "lightyellow", color = "black") +
  labs(title = "Distribution of Petal Width")

# Scatter plot for Sepal Length vs Petal Length
ggplot(iris_data, aes(x = SepalLengthCm, y = PetalLengthCm)) +
  geom_point(color = "blue") +
  labs(title = "Sepal Length vs Petal Length")

# Scatter plot colored by Species
ggplot(iris_data, aes(x = SepalLengthCm, y = PetalLengthCm, color = Species)) + 
  geom_point() +
  labs(title = "Sepal Length vs Petal Length by Species")


# Detecting Outliers using boxplots for each numeric variable
boxplot(iris_data[, 1:4], main = "Boxplots for Iris Dataset Variables")

# Confirm the data was loaded correctly
head(iris_data)

# Check column names
colnames(iris_data)

