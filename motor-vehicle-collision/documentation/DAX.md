# 📊 DAX Measures - Motor vehicle collision

## 🔸Summary

| Measure name                           |Purpose                       |
|----------------------------------------|------------------------------|
|Total Crashes                           | Sum of total crashes         |
|Total Injuries                          | Sum of total injuries (All roles)|
|Total Deaths                            | Sum of total Deaths  (All roles)|
|Collisions by Vehicle Type              | Sum of collisions by vehcile type|

---

## 🔢 Detail DAX Measures

### 1. Total Crashes
``` DAX
Total Crashes = COUNTROWS('public motors')
```
### 2. Total Injuries
``` DAX
Total Injuries = CALCULATE(SUM('dim_casualties'[count]),
    FILTER('dim_casualties', 'dim_casualties'[Injury_type] ="injured"))
```
### 3. Total Deaths
``` DAX
Total Deaths = CALCULATE(SUM('dim_casualties'[count]),
    FILTER('dim_casualties', 'dim_casualties'[Injury_type] = "killed"))
```
### 4. Collisions by Vehicle Type
``` DAX
Collisions by Vehicle Type = CALCULATE(DISTINCTCOUNT('dim_vehicles'[collision_id]))
```