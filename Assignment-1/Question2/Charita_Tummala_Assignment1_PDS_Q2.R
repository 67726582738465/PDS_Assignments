# 1.Loading the Data
library(readxl)
StudentsPerformance <- read.csv("C:/Users/tumma/Downloads/StudentsPerformance.csv")
View(StudentsPerformance)

# 2.Exploring the Data

library(ggplot2)
library(stringr)
library(dplyr)

head(StudentsPerformance)

summary(StudentsPerformance)

str(StudentsPerformance)

colnames(StudentsPerformance)

NamesofColumns <- c("Gender","Race","Parent_level_of_Education","Lunch","Test_Preparation_Course","Math_Score","Reading_Score","writing_Score")
colnames(StudentsPerformance) <- NamesofColumns
colnames(StudentsPerformance)

# 3.Data Visualization 

library(ggplot2)

ggplot(StudentsPerformance, aes(Math_Score)) + geom_histogram(binwidth = 15, color = "black", aes(fill = Gender)) + labs(title = "Histogram of Math Scores by Gender")

ggplot(StudentsPerformance, aes(Reading_Score)) + geom_histogram(binwidth = 10, color = "gray", aes(fill = Gender)) + labs(title = "Histogram of Reading Scores by Gender")

ggplot(StudentsPerformance, aes(writing_Score)) + geom_histogram(binwidth = 5, color = "black", aes(fill = Gender)) + labs(title = "Histogram of Writing Scores by Gender")

ggplot(StudentsPerformance, aes(x = Parent_level_of_Education), aes(y = Math_Score)) + geom_bar(fill = "lavender",color = "black") + labs(title = "Bar Chart of Parental Level of Education", x = "Parental Education Level", y = "Math Score")

ggplot(StudentsPerformance, aes(x = Parent_level_of_Education, fill = Gender)) + geom_bar(position = "stack") + labs(title = "Bar Chart for Parental Level of Education based on Gender", x = "Parental Education Level", y = "Frequency")