# 📊 DAX Measures – Health_Care

This document lists and explains all DAX measures used in the Power BI dashboards for this project.

---
## 🔹Summary

| Measure Name             | Purpose                             | Format     |
|--------------------------|-------------------------------------|------------|
| Total Expenses           | Sum of medical expenses             | Currency   |
| Total Insurance Payment  | Sum paid by insurance               | Currency   |
| Total Patient Payment    | Out-of-pocket patient cost          | Currency   |
| Insurance  %     | % of expense covered by insurance   | Percentage |
| Average Patient Payment  | Avg. payment made by patients       | Currency   |

---

## 🔢 Detailed DAX Measures

### 1. **Total Expenses**
```DAX
Total Expenses = SUM(Healthcare_Dataset[Expenses])
```
 ### 2. **Total Insurance Payment**
```DAX
Total Insurance Payment = SUM(Healthcare_Dataset[Insurance])
```
### 3. **Total Patient Payment**
```DAX
Total Patient Payment = SUM(Healthcare_Dataset[Patient_Payment])
```
### 4. **Total CPT Units**
```DAX
Total CPT Units = SUM(Healthcare_Dataset[CPTUnits])
```
### 5. **Insurance %**
```DAX
Insurance % = DIVIDE([Total Insurance Payment],[Total Expenses],0)
```
### 5. Average Patient Payment
```DAX
Average Patient Payment = AVERAGE(Healthcare_Dataset[Patient_Payment])
```