## DAX Measures
This documents contains list of DAX metrics used for Austin-weather-forecast dashboard.

## 🔢 Metrics
| Metric Name             | Description                                        |
|---------|-------------------------------------------------|
| Average Cloud              |  Average cloudy rate |
| Chance of rain             | Average chance of rain |
| Current Temperature        |  current temperature by time |
| Feels Like                |  Average feels_like temperature by time |
| High Gust Alert            |  Alerts when wind greater then 30|
| Humidity%                   | Average humidity percentage |
| Latest Humidity             |  Latest humidity rate by time |
| Latest uv                   |  sum of latest UV by time|
| Low Visibility              |  Alerts when visibility lass then 2|
| Max Temp                     | maximum temp by time |
| Min Temp                     |  minimum temp by time |
| Total Precip                 |  Total percipitation|
|will_it_rain1                 |Rain forecast|
---

## 🔢 Detailed DAX Measures

### 1. **Average cloud rate**
```DAX
Avg Cloud = AVERAGE('public weather_forecast'[cloud])
```
### 2. **chance of rain by time**
```DAX
chance_of_rain = 
CALCULATE(
    AVERAGE('public weather_forecast'[chance of rain]),
    FILTER(
        'public weather_forecast',
        'public weather_forecast'[time] = MAX('public weather_forecast'[time])
    )
)
```
### 3. **Maximum temperature by time**
```DAX
Current Temperature = CALCULATE( MAX('public weather_forecast'[temp_c]),FILTER('public weather_forecast',
        'public weather_forecast'[time] = MAX('public weather_forecast'[time])))
```
### 4. **Average feels-like rate**
```DAX
Feels Like = CALCULATE(AVERAGE('public weather_forecast'[feelslike_c]),
    FILTER('public weather_forecast',
        'public weather_forecast'[time] = MAX('public weather_forecast'[time]) ))
```
### 5. **High gust alert**
```DAX
High Gust Alert = IF(MAX('public weather_forecast'[gust mph]) > 30, "⚠️ High Wind", "Normal")
```
### 6. **Humidity(%)**
```DAX
humidity% = AVERAGE('public weather_forecast'[humidity]) / 100
```

### 7. **Humidity by time**
```DAX
Latest Humidity = 
CALCULATE(
    AVERAGE('public weather_forecast'[humidity]),
    FILTER(
        'public weather_forecast',
        'public weather_forecast'[time] = MAX('public weather_forecast'[time])
    )
)
```

### 8. **UV by time**
```DAX
Latest uv = 
CALCULATE(
    SUM('public weather_forecast'[uv]),
    FILTER(
        'public weather_forecast',
        'public weather_forecast'[time] = MAX('public weather_forecast'[time])))
```
### 9. **Low visibility alert**
```DAX
Low Visibility = IF(MIN('public weather_forecast'[vis miles]) < 2, "🚨 Fog Risk", "Clear")
```

### 10. **Maximum temperature by time**
```DAX
Max_Temp = CALCULATE(MAX('public weather_forecast'[temp_c]),ALLEXCEPT('public weather_forecast','public weather_forecast'[forecast_date]))
```
### 11. **Minimum temperature by time**
```DAX
Min_Temp = CALCULATE(MIN('public weather_forecast'[temp_c]), ALLEXCEPT('public weather_forecast','public weather_forecast'[forecast_date]))
```
### 12. **Total percipitation**
```DAX
Total Precip = SUM('public weather_forecast'[precip_mm])
```

### 13. **Rain forecast**
```DAX
will_it_rain1 = AVERAGE('public weather_forecast'[will it rain])
```
