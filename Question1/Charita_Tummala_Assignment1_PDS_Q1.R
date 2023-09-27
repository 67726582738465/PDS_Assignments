library(readr)
Clean_data <- read_csv("C:/Users/tumma/Downloads/Clean_data.csv")
View(Clean_data)

library(psych)
describe(Clean_data)
Clean_data$Frailty <- ifelse(Clean_data$Frailty == "Y", 1, 0)
cor(Clean_data[sapply(Clean_data, function(x) !is.factor(x))])
arrange(Clean_data)
