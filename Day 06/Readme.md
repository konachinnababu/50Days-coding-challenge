#  Banking Sector Analysis Dashboard

##  Project Overview

This project focuses on analyzing customer behavior, transaction patterns, and loan performance in a banking dataset using Power BI.
The dashboard provides actionable insights to help management make data-driven decisions.

---

##  Objectives

* Analyze customer demographics and account distribution
* Track transaction trends over time
* Evaluate loan performance and default risk
* Identify top customers based on transaction value

---

## Dataset

* **File Name:** Banking_Data.csv
* Contains customer details, transaction records, and loan status information

### Key Columns:

* Customer_ID
* Customer_Name
* Age, Gender
* Account_Type
* Balance
* Transaction_Date
* Transaction_Type
* Transaction_Amount
* Loan_Status

---

## Data Cleaning & Transformation

* Removed duplicate records
* Handled missing values
* Created **Age Groups** (18–30, 31–50, 51+)
* Created **Net Transaction Impact** column
* Replaced blank Loan_Status with **"No Loan"**
* Standardized Account Types

---

##  Key DAX Measures

* Total Deposits
* Total Withdrawals
* Net Balance Growth
* Total Customers
* Loan Default Rate %
* Monthly Transaction Volume
* Customer Profitability Score

---

## Dashboard Pages

### 1️⃣ Customer Overview

* Customers by Age Group & Gender
* Total Customers KPI
* Balance-based conditional formatting

---

### 2️⃣ Transaction Analysis

* Monthly transaction trend (Line Chart)
* Heatmap (Day vs Hour)
* Drill-through for customer transaction details

---

### 3️⃣ Loan Performance

* Loan Status distribution (Pie Chart)
* Loan Default Rate KPI with traffic light colors
* Interest rate simulation using What-If parameter


## ⚙️ Advanced Features Used

* Conditional Formatting (Tables & KPI Cards)
* Tooltips
* Bookmarks (View switching)
* Slicers (Age Group, Gender, Account Type)
* Date Hierarchy (Year → Quarter → Month)

## Key Insights

* Majority of customers fall in the 18–30 age group
* Peak transaction activity observed in specific months and hours
* Loan default rate indicates risk level for the bank
* Top customers contribute significantly to total transaction volume

##  Deliverables

* Power BI Dashboard (.pbix file)
* Insight Summary (2–3 slides)

##  Tools Used

* Power BI
* DAX (Data Analysis Expressions)

##  Dashboard Preview

<img width="1214" height="685" alt="image" src="https://github.com/user-attachments/assets/2e7d93e7-e68d-4125-a96c-d3085071f6e5" />


## 🙌 Conclusion

This dashboard provides a comprehensive view of banking operations, enabling better decision-making through data visualization and analysis.
