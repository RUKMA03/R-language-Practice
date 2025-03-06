# Time Series Analysis in R

# Load necessary library
library(forecast)

# Create a simple time series
ts_data <- ts(c(100, 120, 130, 150, 170, 200), start = c(2020, 1), frequency = 12)

# Plot the time series
plot(ts_data, main = "Simple Time Series", col = "blue", lwd = 2)

# Forecasting
forecasted <- forecast(ts_data, h=5)
print(forecasted)
plot(forecasted)
