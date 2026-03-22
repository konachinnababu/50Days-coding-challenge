# Manufacturing Quality Control Dashboard (  Power Bi )

<img width="1233" height="724" alt="image" src="https://github.com/user-attachments/assets/54679345-eddb-477e-9ad2-a65d1b86dc86" />


##  Project Overview

This project focuses on building a **Quality Control Dashboard** using Power BI to monitor product defects and improve production quality.

The dashboard helps identify:

* Overall defect rate
* Most defective products
* Defect trends over time
* Batch-wise quality performance

---

## 🔹 Dataset Used

The project uses two datasets:

1. **Production Data**

   * ProductID
   * BatchID
   * Date
   * Status (Pass / Fail)

2. **Batch Data**

   * BatchID
   * ProductionLine
   * InspectorName

---

##  Data Modeling

* Established relationship between:

  * `Production[BatchID]` → `Batches[BatchID]`
* Relationship Type: Many-to-One

---

##  Key KPIs (DAX Measures)

* **Total Items**
* **Defective Items**
* **Defect Rate (%)**
* **Daily Defect Rate**

---

## 🔹 Dashboard Features

###  KPI Card

* Displays overall defect rate

###  Top 5 Defective Products

* Clustered bar chart showing most problematic products

### 📈 Defect Trend Over Time

* Line chart showing daily defect rate trend

### 📋 Batch Analysis

* Matrix showing defects by:

  * Production Line
  * Inspector Name

### 🎯 Slicer

* Date slicer for dynamic filtering

---

## 🔹 Tools Used

* Power BI
* DAX (Data Analysis Expressions)

## Key Insights

* Identified high defect products
* Tracked defect trends over time
* Evaluated inspector and production line performance

##  How to Use

1. Open the `.pbix` file in Power BI
2. Use the Date slicer to filter data
3. Analyze charts and KPIs for insights

## Conclusion

This dashboard provides a clear and interactive way to monitor quality issues and supports better decision-making in manufacturing processes.

##  Future Improvements

* Add advanced filters
* Include predictive analysis
* Improve UI design
