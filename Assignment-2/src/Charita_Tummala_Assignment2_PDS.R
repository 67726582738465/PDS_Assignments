library(readr)
train <- read_csv("C:\Users\tumma\Downloads\train.csv")
view(train)

is.na(train)

is.na(train$New_Price)

train$New_Price = ifelse(is.na(train$New_Price),median(train$New_Price,na.rm = TRUE),train$New_Price)

train$Mileage <- as.numeric(gsub(" kmpl","",train$Mileage))
train$Mileage = ifelse(is.na(train$Mileage),median(train$Mileage,na.rm = TRUE),train$Mileage)
train$Engine <- as.numeric(gsub("CC", "", train$Engine))
train$Power <- as.numeric(gsub("bhp", "", train$Power))


library(caret)
train_encoded <- cbind(train,model.matrix(~ Fuel_Type + Transmission - 1, data = train))

train_encoded <- train_encoded[, !(names(train) %in% c("Fuel_Type", "Transmission"))]
head(train_encoded)

current_year <- as.numeric(format(Sys.Date(), "%Y"))
train$Current_Age <- current_year - train$Year


