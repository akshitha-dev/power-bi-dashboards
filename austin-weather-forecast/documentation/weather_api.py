import pandas as pd
import requests
import sqlalchemy

# API call for 14-day forecast
url = "https://api.weatherapi.com/v1/forecast.json?q=Austin&days=14&key="
response = requests.get(url)
data = response.json()

# Normalize location data
df_loc = pd.json_normalize(data["location"])

# Flatten all hourly forecast data across 14 days
all_hours = []

for day in data["forecast"]["forecastday"]:
    for hour in day["hour"]:
        row = hour.copy()
        row["forecast_date"] = day["date"]

        # Flatten nested condition dictionary
        if isinstance(row.get("condition"), dict):
            row["condition_text"] = row["condition"].get("text")
            row["condition_icon"] = row["condition"].get("icon")
            row["condition_code"] = row["condition"].get("code")
            del row["condition"]

        # Add location fields to each row
        for col in df_loc.columns:
            row[col] = df_loc[col][0]

        all_hours.append(row)

# Convert to DataFrame
df_combined = pd.DataFrame(all_hours)

# Save to PostgreSQL
engine = sqlalchemy.create_engine("postgresql+psycopg2://postgres:password@localhost:5432/postgres")
df_combined.to_sql("weather_forecast", con=engine, index=False, if_exists="replace")

print("Data saved successfully:", df_combined.shape)

