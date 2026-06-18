<img width="1335" height="737" alt="image-1" src="https://github.com/user-attachments/assets/08fc8e94-6212-4d4f-af03-7c8ec1f69234" /># Customer Churn Analysis & Prediction

An end-to-end data analytics project built using SQL, Power BI, Python, and machine learning.


## Overview

Customer churn is one of the more costly problems telecom companies face — once a customer leaves, winning them back is expensive and uncertain. This project digs into customer behavior data to understand what drives churn and, more importantly, to predict which customers are likely to leave before they do.

The workflow covers everything from raw data to actionable insight: SQL for cleaning and preparing the data, Power BI for interactive dashboards, and a machine learning model for churn prediction.

---

## Project Objectives

- Analyze historical churn patterns across the customer base
- Identify the key factors that lead customers to leave
- Build an interactive Power BI dashboard for business users
- Train a machine learning model to flag high-risk customers
- Translate findings into concrete business recommendations

---

## Workflow

```
Raw Customer Dataset
        |
Data Cleaning & Transformation
        |
SQL Analysis
        |
Power BI Dashboard
        |
Machine Learning Model
        |
Customer Churn Predictions
```

---

## Technology Stack

| Technology       | Purpose                  |
| ---------------- | ------------------------ |
| SQL Server       | Data Cleaning & Analysis |
| Power BI         | Dashboard Development    |
| Python           | Machine Learning         |
| Pandas           | Data Processing          |
| NumPy            | Numerical Analysis       |
| Scikit-Learn     | Predictive Modeling      |
| Jupyter Notebook | Model Development        |

---

## Dashboard Preview

### Customer Churn Summary

<img width="1335" height="737" alt="image-1" src="https://github.com/user-attachments/assets/17769780-3a50-4ab1-bd85-a5e29deb7430" />

### Churn Reason Analysis

<img width="421" height="305" alt="image-2" src="https://github.com/user-attachments/assets/579cb57b-7cf6-49c7-9fd4-1be6d9d9404a" />

### Churn Prediction Dashboard

<img width="966" height="532" alt="image-3" src="https://github.com/user-attachments/assets/1eca51bc-e205-40db-a561-8ad151c3382c" />


---

## Dataset

The dataset covers 7,043 telecom customers and includes:

- Customer demographics
- Service subscriptions
- Contract and payment details
- Monthly and total charges
- Churn status, category, and specific churn reasons

---

## SQL Data Preparation

The SQL layer handles everything before the data reaches Power BI or Python:

- Data exploration and profiling
- Identifying and handling missing values
- Cleaning and transforming records
- Building production-ready views for reporting

Two analytical views power the dashboard and the prediction pipeline:

```sql
vw_ChurnData
vw_JoinData
```

---

## Business Analysis

The SQL analysis was designed to answer real business questions:

- Which contract types are most associated with churn?
- Which states have the highest churn rates?
- Which customer segments contribute the most revenue?
- Who is most at risk of leaving?

---

## Machine Learning Model

A Random Forest classifier was trained to predict which customers are likely to churn.

### Development Steps

1. Data preprocessing
2. Feature engineering
3. Encoding categorical variables
4. Train/test split (80/20)
5. Model training
6. Performance evaluation

### Results

| Metric      | Value         |
| ----------- | ------------- |
| Accuracy    | 88%           |
| Algorithm   | Random Forest |
| Split       | 80/20         |

### Top Churn Drivers

- Contract type
- Customer tenure
- Monthly charges
- Internet service type
- Additional service subscriptions

---

## Key Findings

- Month-to-month contracts are strongly associated with higher churn.
- Newer customers churn at a higher rate than long-tenured ones.
- Monthly charge level has a meaningful impact on churn probability.
- Contract type is one of the single strongest predictors in the model.
- The model successfully identifies high-risk customers before they leave.

---

## Repository Structure

```
Customer-Churn-Analysis/
|
|-- README.md
|-- churn_etl.sql
|-- churn_prediction.ipynb
|-- churn_dashboard.pbix
|-- Prediction_Data.xlsx
|-- Predictions.csv.xlsx
|-- dashboard_images/
```

---

## How to Run

**SQL Analysis**

Run the ETL script in SQL Server:

```sql
churn_etl.sql
```

**Power BI Dashboard**

Open the `.pbix` file in Power BI Desktop:

```
churn_dashboard.pbix
```

**Machine Learning Model**

Open and run in Jupyter Notebook:

```
churn_prediction.ipynb
```

---

## Future Improvements

- Real-time churn prediction pipeline
- Automated ETL workflows
- Cloud deployment on AWS or Azure
- Exploring advanced ensemble methods beyond Random Forest

---

## About

**Kunal Choudhary**  
B.Tech Computer Science Engineering  
Aspiring Data Analyst — SQL, Python, Power BI

LinkedIn: (https://www.linkedin.com/in/kunal-choudhary1299/) 
GitHub:  https://github.com/kunalsc007
