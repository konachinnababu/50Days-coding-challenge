# 📊 Ola Complaint Analysis (String Operations Only)

## 🧾 Project Overview

This project simulates a real-world data analysis task where complaint data from a ride-booking service (like Ola/Uber) is provided as a **single string**.

The goal is to clean, process, and analyze the data using **only string operations in Python**.

---

## 📥 Input Data

```python
data = "Ride101-Ramesh-Late Arrival-Bangalore, Ride102-Suresh-rude behavior-Hyderabad, Ride103-Mahesh-Late arrival-Bangalore"
```

---

## 🎯 Objectives

* Convert data into a clean format
* Count total complaints
* Identify common issues
* Extract useful information from raw string

---

## 🛠️ Tasks Performed

### ✅ 1. Convert to Lowercase

Standardize the data for consistency.

```python
data = data.lower()
```

---

### ✅ 2. Count Total Complaints

Split the string using comma and count records.

```python
records = data.split(",")
print(len(records))
```

---

### ✅ 3. Count "Late Arrival" Issues

```python
print(data.count("late arrival"))
```

---

### ✅ 4. Count Complaints from Bangalore

```python
print(data.count("bangalore"))
```

---

### ✅ 5. Extract First Driver Name

```python
first = data.split(",")[0]
name = first.split("-")[1]
print(name)
```

---

### ✅ 6. Replace Issue Names (Standardization)

```python
data = data.replace("rude behavior", "rude_behavior")
data = data.replace("late arrival", "late_arrival")
```

---

### ✅ 7. Print Clean Data Line by Line

```python
records = data.split(",")

for record in records:
    print(record.strip().replace("_", " "))
```

---

## 📌 Key Concepts Used

* `lower()` → data standardization
* `split()` → breaking string into parts
* `count()` → frequency analysis
* `replace()` → data cleaning
* `strip()` → removing unwanted spaces

---

## 🚀 Learning Outcome

* Understood how raw string data is processed in real-world scenarios
* Learned how to extract structured insights from unstructured text
* Built a strong foundation for data cleaning (important for Data Analysts)

---

## 📎 Conclusion

This project demonstrates how powerful basic string operations can be when working with raw data. These concepts are widely used in data preprocessing before using advanced tools like Pandas or SQL.

---

🔥 Next Step:
Convert this logic using **Pandas DataFrame** for real-world scalability.

