setwd("C:/Users/sahir/OneDrive - Lovely Professional University/Desktop")
list.files()
"okuns_law_india.csv"
data <- read.csv("okuns_law_india.csv")
head(data)
# Check structure
str(data)

# Plot GDP
plot(data$Year, data$GDP, type="l", col="blue",
     main="GDP Growth in India", xlab="Year", ylab="GDP Growth (%)")

# Plot Unemployment
plot(data$Year, data$Unemployment, type="l", col="red",
     main="Unemployment Rate in India", xlab="Year", ylab="Unemployment (%)")

# Scatter plot
plot(data$GDP, data$Unemployment,
     main="Unemployment vs GDP Growth",
     xlab="GDP Growth (%)",
     ylab="Unemployment Rate (%)",
     pch=19, col="darkgreen")

# Regression
model <- lm(Unemployment ~ GDP, data = data)
summary(model)
# Create change in unemployment
data$dUnemp <- c(NA, diff(data$Unemployment))

# Create lagged GDP growth
data$GDP_lag1 <- c(NA, data$GDP[-nrow(data)])

# Remove NA rows
data2 <- na.omit(data)

# New regression
model2 <- lm(dUnemp ~ GDP_lag1, data = data2)

summary(model2)
