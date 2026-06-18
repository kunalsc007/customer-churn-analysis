CREATE DATABASE db_Churn
--Data Exploration � Check Distinct Values
select * from stg_Churn;

select Gender, 
count(Gender) as TotalCount,
count(Gender)*100.0 / (select count(Gender) from stg_Churn) as Percentage
from stg_Churn
Group BY Gender;

select Contract,
count(Contract) as TotalCount,
count(Contract)*100.0 / (select count(Contract) from stg_Churn ) AS Percentage
from stg_Churn
Group By Contract;

select Customer_Status,
count(Customer_Status) as TotalCount,
Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue)*100.0 / (select Sum(Total_Revenue) from stg_Churn ) AS Rev_Percentage
from stg_Churn
Group By Customer_Status;

select State,
count(state) as TotalCount,
count(state) *100.0 / (select count(state) from stg_Churn) as Percentage
from stg_Churn
Group By State
order by Percentage desc;

--Data Exploration � Check Nulls

SELECT�
    SUM(CASE�WHEN�Customer_ID IS�NULL�THEN�1 ELSE�0 END)�AS�Customer_ID_Null_Count,

��� SUM(CASE�WHEN�Gender IS�NULL�THEN�1 ELSE�0 END)�AS�Gender_Null_Count,

��� SUM(CASE�WHEN�Age IS�NULL�THEN�1 ELSE�0 END)�AS�Age_Null_Count,

��� SUM(CASE�WHEN�Married IS�NULL�THEN�1 ELSE�0 END)�AS�Married_Null_Count,

��� SUM(CASE�WHEN�State�IS�NULL�THEN�1 ELSE�0 END)�AS�State_Null_Count,

��� SUM(CASE�WHEN�Number_of_Referrals IS�NULL�THEN�1 ELSE�0 END)�AS�Number_of_Referrals_Null_Count,

��� SUM(CASE�WHEN�Tenure_in_Months IS�NULL�THEN�1 ELSE�0 END)�AS�Tenure_in_Months_Null_Count,

��� SUM(CASE�WHEN�Value_Deal IS�NULL�THEN�1 ELSE�0 END)�AS�Value_Deal_Null_Count,

��� SUM(CASE�WHEN�Phone_Service IS�NULL�THEN�1 ELSE�0 END)�AS�Phone_Service_Null_Count,

��� SUM(CASE�WHEN�Multiple_Lines IS�NULL�THEN�1 ELSE�0 END)�AS�Multiple_Lines_Null_Count,

��� SUM(CASE�WHEN�Internet_Service IS�NULL�THEN�1 ELSE�0 END)�AS�Internet_Service_Null_Count,

��� SUM(CASE�WHEN�Internet_Type IS�NULL�THEN�1 ELSE�0 END)�AS�Internet_Type_Null_Count,

��� SUM(CASE�WHEN�Online_Security IS�NULL�THEN�1 ELSE�0 END)�AS�Online_Security_Null_Count,

��� SUM(CASE�WHEN�Online_Backup IS�NULL�THEN�1 ELSE�0 END)�AS�Online_Backup_Null_Count,

��� SUM(CASE�WHEN�Device_Protection_Plan IS�NULL�THEN�1 ELSE�0 END)�AS�Device_Protection_Plan_Null_Count,

��� SUM(CASE�WHEN�Premium_Support IS�NULL�THEN�1 ELSE�0 END)�AS�Premium_Support_Null_Count,

��� SUM(CASE�WHEN�Streaming_TV IS�NULL�THEN�1 ELSE�0 END)�AS�Streaming_TV_Null_Count,

��� SUM(CASE�WHEN�Streaming_Movies IS�NULL�THEN�1 ELSE�0 END)�AS�Streaming_Movies_Null_Count,

��� SUM(CASE�WHEN�Streaming_Music IS�NULL�THEN�1 ELSE�0 END)�AS�Streaming_Music_Null_Count,

��� SUM(CASE�WHEN�Unlimited_Data IS�NULL�THEN�1 ELSE�0 END)�AS�Unlimited_Data_Null_Count,

��� SUM(CASE�WHEN�Contract�IS�NULL�THEN�1 ELSE�0 END)�AS�Contract_Null_Count,

��� SUM(CASE�WHEN�Paperless_Billing IS�NULL�THEN�1 ELSE�0 END)�AS�Paperless_Billing_Null_Count,

��� SUM(CASE�WHEN�Payment_Method IS�NULL�THEN�1 ELSE�0 END)�AS�Payment_Method_Null_Count,

��� SUM(CASE�WHEN�Monthly_Charge IS�NULL�THEN�1 ELSE�0 END)�AS�Monthly_Charge_Null_Count,

��� SUM(CASE�WHEN�Total_Charges IS�NULL�THEN�1 ELSE�0 END)�AS�Total_Charges_Null_Count,

��� SUM(CASE�WHEN�Total_Refunds IS�NULL�THEN�1 ELSE�0 END)�AS�Total_Refunds_Null_Count,

��� SUM(CASE�WHEN�Total_Extra_Data_Charges IS�NULL�THEN�1 ELSE�0 END)�AS�Total_Extra_Data_Charges_Null_Count,

��� SUM(CASE�WHEN�Total_Long_Distance_Charges IS�NULL�THEN�1 ELSE�0 END)�AS�Total_Long_Distance_Charges_Null_Count,

��� SUM(CASE�WHEN�Total_Revenue IS�NULL�THEN�1 ELSE�0 END)�AS�Total_Revenue_Null_Count,

��� SUM(CASE�WHEN�Customer_Status IS�NULL�THEN�1 ELSE�0 END)�AS�Customer_Status_Null_Count,

��� SUM(CASE�WHEN�Churn_Category IS�NULL�THEN�1 ELSE�0 END)�AS�Churn_Category_Null_Count,

��� SUM(CASE�WHEN�Churn_Reason IS�NULL�THEN�1 ELSE�0 END)�AS�Churn_Reason_Null_Count

FROM�stg_Churn;

�
--Remove null and insert the new data into Prod table

SELECT�
    Customer_ID,

��� Gender,

��� Age,

��� Married,

��� State,

��� Number_of_Referrals,

��� Tenure_in_Months,

��� ISNULL(Value_Deal,�'None')�AS�Value_Deal,

��� Phone_Service,

��� ISNULL(Multiple_Lines,�'No')�As�Multiple_Lines,

��� Internet_Service,

��� ISNULL(Internet_Type,�'None')�AS�Internet_Type,

��� ISNULL(Online_Security,�'No')�AS�Online_Security,

��� ISNULL(Online_Backup,�'No')�AS�Online_Backup,

��� ISNULL(Device_Protection_Plan,�'No')�AS�Device_Protection_Plan,

��� ISNULL(Premium_Support,�'No')�AS�Premium_Support,

��� ISNULL(Streaming_TV,�'No')�AS�Streaming_TV,

��� ISNULL(Streaming_Movies,�'No')�AS�Streaming_Movies,

��� ISNULL(Streaming_Music,�'No')�AS�Streaming_Music,

��� ISNULL(Unlimited_Data,�'No')�AS�Unlimited_Data,

��� Contract,

��� Paperless_Billing,

��� Payment_Method,

��� Monthly_Charge,

��� Total_Charges,

��� Total_Refunds,

��� Total_Extra_Data_Charges,

��� Total_Long_Distance_Charges,

��� Total_Revenue,

��� Customer_Status,

��� ISNULL(Churn_Category,�'Others')�AS�Churn_Category,

��� ISNULL(Churn_Reason ,�'Others')�AS�Churn_Reason

�

INTO�[db_Churn].[dbo].[prod_Churn]

FROM�[db_Churn].[dbo].[stg_Churn];

-- Create View for Power BI

Create�View�vw_ChurnData as
    select�*�from�prod_Churn where�Customer_Status In�('Churned',�'Stayed')
��

Create�View�vw_JoinData as
    select�*�from�prod_Churn where�Customer_Status =�'Joined' 


    -- Customer Churn Rate by Contract Type



-- Buisness insights: 

-- customer churn rate by contract type 
SELECT Contract,
       COUNT(*) AS Total_Customers,
       SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) AS Churned_Customers,
       ROUND(
            100.0 * SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END)
            / COUNT(*),2
       ) AS Churn_Rate
FROM prod_Churn
GROUP BY Contract
ORDER BY Churn_Rate DESC;


-- Top 10 States with Highest Churn

SELECT TOP 10
       State,
       COUNT(*) AS Churned_Customers
FROM prod_Churn
WHERE Customer_Status = 'Churned'
GROUP BY State
ORDER BY Churned_Customers DESC;



-- Revenue Analysis by Customer Status

SELECT Customer_Status,
       COUNT(*) AS Customers,
       ROUND(AVG(Total_Revenue),2) AS Avg_Revenue,
       ROUND(SUM(Total_Revenue),2) AS Total_Revenue
FROM prod_Churn
GROUP BY Customer_Status
ORDER BY Total_Revenue DESC;