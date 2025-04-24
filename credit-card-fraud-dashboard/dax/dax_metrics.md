## DAX Measures
This documents contains list of DAX metrics used for this dashboard.

## 🔢 Metrics
| Metric Name             | Description                                        |
|---------|-------------------------------------------------|
| Fraud count              |  Sum of total frauds |
| Fraud loss              |  Sum of total amount lost in fraud |
| Fraud Rate (%)              |  % Fraud rate |
| Non-fraud count              |  Sum of non fraud case |
| Total transaction            |  Sum of total transactions|
---

## 🔢 Detailed DAX Measures

### 1. **Fraud Count**
```DAX
Count Fraud = 
CALCULATE(COUNTROWS(Transactions),Transactions[is_fraud] = 1)
```
### 2. **Fraud loss**
```DAX
Count Fraud = 
Fraud loss = CALCULATE(SUM(Transactions[amt]),Transactions[is_fraud]=1)
```
### 3. **Fraud Rate (%)**
```DAX
Fraud Rate (%) = DIVIDE(CALCULATE(COUNTROWS(Transactions), Transactions[is_fraud] = 1), COUNTROWS(Transactions)) * 100
```
### 4. **Non-fraud count**
```DAX
Good Transaction = CALCULATE(COUNTROWS(Transactions),Transactions[is_fraud]=0)
```
### 5. **Total transaction**
```DAX
Total Transactions = COUNTROWS(Transactions)
```