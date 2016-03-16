require "forecast_io"
ForecastIO.api_key = ENV["forecast_IO_API"]

def forecast
  ForecastIO.forecast(30.2233694,-97.7579789)
end
