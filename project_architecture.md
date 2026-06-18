# 📊 Customer Churn Analysis & Prediction

## Overview

This project analyzes customer churn behavior in a telecom company using SQL, Power BI, and Machine Learning. The objective is to identify customers who are likely to leave the service, understand the factors influencing churn, and provide actionable business recommendations to improve customer retention.

The project follows an end-to-end analytics workflow including data preparation, exploratory data analysis, dashboard development, and predictive modeling using a Random Forest Classifier.

---

# Project Objectives

* Analyze customer churn behavior and patterns
* Identify key factors contributing to customer attrition
* Build a machine learning model to predict future churn
* Create interactive dashboards for business decision-making
* Generate actionable recommendations to improve customer retention

---

# Project Workflow

```text
Raw Data
   ↓
Data Cleaning & Transformation
   ↓
SQL Database
   ↓
Power BI Dashboard
   ↓
Machine Learning Model
   ↓
Churn Prediction
```

---

# System Architecture

```text
Customer Dataset (CSV)
        ↓
SQL Database
        ↓
Data Cleaning & Validation
        ↓
Analytical Dataset
        ↓
Power BI Dashboard
        ↓
Random Forest Model
        ↓
Predicted Churn Customers
```

---

# Dataset Information

Dataset: Telecom Customer Churn Dataset

Total Records: 7,043 Customers

The dataset contains:

* Customer demographics
* Service subscription details
* Billing and payment information
* Revenue metrics
* Contract information
* Customer churn status
* Churn categories and reasons

The data supports both descriptive analytics and predictive modeling.

---

# Data Preparation & SQL Analysis

The dataset was imported into a SQL database for cleaning and analysis.

### Tasks Performed

* Data import and validation
* Missing value detection
* Data cleaning and transformation
* Customer segmentation
* Exploratory SQL analysis
* Creation of analytical datasets for dashboarding and modeling

### Sample SQL Analysis

```sql
SELECT Gender, COUNT(*) AS Total_Customers
FROM Customer
GROUP BY Gender;
```

---

# Power BI Dashboard

Interactive dashboards were created to analyze churn behavior from multiple perspectives.

### Dashboard Features

* Total Customers
* Churn Rate
* New Customers
* Revenue Analysis
* Customer Demographics
* Geographic Distribution
* Contract Analysis
* Service Usage Analysis

### Key Visualizations

* Churn Analysis Dashboard
* Churn Reason Dashboard
* Churn Prediction Dashboard

---

# Machine Learning Model

A Random Forest Classification Model was developed to predict customer churn.

### Why Random Forest?

* Handles categorical data effectively
* Reduces overfitting through ensemble learning
* Provides feature importance analysis
* Strong predictive performance

### Data Preparation

* Removed unnecessary columns
* Encoded categorical variables
* Split data into training and testing datasets

```text
Training Data: 80%
Testing Data: 20%
```

### Model Training

```python
rf_model = RandomForestClassifier(
    n_estimators=100,
    random_state=42
)

rf_model.fit(X_train, y_train)
```

### Model Performance

Evaluation metrics used:

* Accuracy
* Precision
* Recall
* F1 Score
* Confusion Matrix

### Model Accuracy

**88% Accuracy**

---

# Churn Prediction

The trained model was applied to customer data to identify customers at risk of churn.

Output:

```text
Predictions.csv
```

The prediction results help businesses proactively target customers who are likely to leave.

---

# Key Findings

* Customers with month-to-month contracts showed the highest churn risk.
* Customers with shorter tenure were more likely to churn.
* Monthly charges had a significant impact on churn probability.
* Contract type was one of the strongest predictors of customer churn.
* The Random Forest model achieved approximately 88% prediction accuracy.
* Power BI dashboards provided clear visibility into churn patterns across customer segments.

---

# Technology Stack

| Technology       | Purpose                 |
| ---------------- | ----------------------- |
| SQL              | Data Storage & Analysis |
| Power BI         | Dashboard Development   |
| Python           | Machine Learning        |
| Pandas           | Data Processing         |
| NumPy            | Numerical Analysis      |
| Scikit-Learn     | Random Forest Model     |
| Jupyter Notebook | Model Development       |

---

# Future Improvements

Potential enhancements include:

* Real-time churn prediction
* Automated ETL workflows
* API deployment of the ML model
* Cloud deployment using AWS or Azure
* Advanced ensemble models for improved accuracy

---

# Conclusion

This project demonstrates practical data analytics skills through customer churn analysis and prediction. By combining SQL for data preparation, Power BI for visualization, and Python for machine learning, the project provides actionable insights that can help businesses reduce churn and improve customer retention strategies.

---

# Author

Kunal Choudhary

B.Tech Computer Science Engineering

Data Analyst | SQL | Python | Power BI
