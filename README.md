#  `Insurance_Analytics.sql` – SQL queries used to perform the complete insurance data analysis.

## 📊 Project Overview

This project analyzes insurance data using MySQL and SQL to generate
business insights related to customers, policies, premiums, claims,
and payments.

The analysis covers customer demographics, policy distribution,
policy expirations, premium trends, claim status, payment status,
and total claim amounts.

## 🛠️ Tools & Technologies

- MySQL
- SQL

## 🔍 Business Questions

The project answers the following business questions:

1. What is the total number of policies?
2. What is the total number of customers?
3. How are policies distributed across different age groups?
4. How are policies distributed by gender?
5. Which policy types have the highest number of policies?
6. Which policies are expiring in 2026?
7. How does total premium vary by policy start year?
8. How are policies distributed by claim status?
9. How are policies distributed by payment status?
10. What is the total claim amount?

## 💻 SQL Concepts Used

- SELECT
- COUNT()
- COUNT(DISTINCT)
- SUM()
- JOIN
- GROUP BY
- ORDER BY
- WHERE
- BETWEEN
- YEAR()
- Aggregate Functions

## 📈 Analysis Results

### Customer & Policy Analysis

| Analysis | Result |
|---|---:|
| Total Policies | 5,000 |
| Total Customers | 3,148 |

### Policies by Age Group

| Age Group | Policies |
|---|---:|
| 16–25 | 572 |
| 26–35 | 805 |
| 36–45 | 706 |
| 46–60 | 1,110 |
| 60+ | 1,807 |

### Policies by Gender

| Gender | Policies |
|---|---:|
| Male | 1,677 |
| Female | 1,624 |
| Others | 1,699 |

### Policies by Policy Type

| Policy Type | Policies |
|---|---:|
| Auto | 1,214 |
| Health | 1,316 |
| Life | 1,234 |
| Property | 1,236 |

### Policies Expiring in 2026

| Policy Type | Expiring Policies |
|---|---:|
| Auto | 109 |
| Health | 102 |
| Life | 108 |
| Property | 134 |

### Premium by Policy Start Year

| Year | Total Premium |
|---:|---:|
| 2014 | ₹13,373.04 |
| 2015 | ₹5,28,899.57 |
| 2016 | ₹5,60,163.70 |
| 2017 | ₹5,21,525.34 |
| 2018 | ₹5,22,067.27 |
| 2019 | ₹5,27,363.76 |
| 2020 | ₹5,17,027.17 |
| 2021 | ₹5,23,036.22 |
| 2022 | ₹5,62,429.24 |
| 2023 | ₹5,09,642.88 |
| 2024 | ₹4,75,480.21 |
| **Total** | **₹52,61,008.40** |

### Claims by Status

| Claim Status | Policies |
|---|---:|
| Approved | 1,074 |
| Pending | 1,027 |
| Failed | 998 |

### Payments by Status

| Payment Status | Policies |
|---|---:|
| Successful | 1,952 |
| Failed | 1,978 |

### Total Claim Amount

**₹251,378,846 (₹251.38 million)**

## 📁 Project Files

- `Insurance_Analytics_.sql` – SQL queries used to perform the complete insurance data analysis.

## 🔍 Key Insights

- Analyzed **5,000 insurance policies** across **3,148 customers**.
- The **60+ age group** had the highest policy count with **1,807 policies**.
- The **46–60 age group** was the second-largest segment with **1,110 policies**.
- **Health** was the most common policy type with **1,316 policies**.
- **Property** had the highest number of policies expiring in 2026 with **134 policies**.
- The highest annual premium was recorded in **2022 at ₹5,62,429.24**.
- Total premium across 2014–2024 was **₹52,61,008.40**.
- Claims consisted of **1,074 Approved, 1,027 Pending, and 998 Failed** claims.
- Failed payments (**1,978**) were slightly higher than successful payments (**1,952**).
- The total claim amount analyzed was **₹251,378,846 (₹251.38 million)**.

## 🎯 Key Skills Demonstrated

- SQL Data Analysis
- Data Aggregation
- Data Cleaning & Filtering
- JOIN Operations
- Customer Segmentation
- Policy Analysis
- Claims Analysis
- Premium Analysis
- Business Insight Generation

## 👤 Author

**Sanjay Balan**
