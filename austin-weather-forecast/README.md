# 📘 Dashboard Summary

## 🧾 Overview
**Dashboard Title:** Austin Weather Forecast  
**Purpose:** Analyze and visualize austin 14 days weather forecast. Helps to estimate temperature rise, fog and visibility, rainfall and overrall weather distribution by time.  
**Tool Used:** Power BI Desktop, Python (API integration), SQL (Data Cleaning)  
**Data Source:** Real-time weather forecast API for Austin

---

## 💹 KPIs & Metrics
| Metric Name             | Description                                        |
|---------|-------------------------------------------------|
| Average Cloud              |  Average cloud rate |
| Chance of rain             | Average chance of rain |
| Current Temperature        |  Current temperature by time |
| Feels Like                 |  Average feels_like temperature by time |
| High Gust Alert            |  Alerts when wind greater then 30|
| Humidity%                  | Average humidity percentage |
| Latest Humidity            |  Latest humidity rate by time |
| Latest uv                  |  Sum of latest UV by time|
| Low Visibility             |  Alerts when visibility less then 2|
| Max Temp                   | Maximum temp by time |
| Min Temp                   |  Minimum temp by time |
| Total Precip               |  Total precipitation|
|will it rain                |Rain forecast|

---

## 🧩 Dashboard Sections 
| Section                  | Description |
|--------------------------|-------------|
| **Overview Cards**       | KPIs and trends                      |
| **Temperature breakdown by time**      | Line chart of temperature in Celcius and fahrenheit over the time|
| **Feels like temperature forecast**    | Line chart of feels_like  temperature in Celcius and fahrenheit by time       |
| **UV breakdown by time**  | ELine chart of overall UV by time                     |
| **Gust vs Visibility by time** | Line chart to compare gust speed vs visibility speed over time |
| **Humidity% by time** | Line chart Percentage of humidity in the air over the time   |
| **Will it rain vs Chances of rain** |Line chart comparing chances of rain with probablity of rain over the time|
| **Precipitation vs cloud** |Line chart comparing precipation amount with coverage of cloud over the time|
| **Distribution of weather** | Pie chart showing distribution of weather by day over the time|
---

## 🔍 Filters & Slicers
- Temperature (°C / °F)
- Feels Like (°C / °F)
- UV Index filter
- Low visibility alert (<2 miles)
- High gust alert
- Humidity percentage
- Chain of rain
- Total precipitation in millimeters
- chances of clouds
---
