# 🚀 Strategic Customer Segmentation & Retention Engine (RFM Model)

![Status](https://img.shields.io/badge/Status-Completed-success)
![Tools](https://img.shields.io/badge/Tools-SQL%20Server%20%7C%20Power%20BI-blue)
![Domain](https://img.shields.io/badge/Domain-E--commerce%20%26%20Retail-orange)

## 📋 Executive Summary

In the competitive retail landscape, customer retention is the cornerstone of sustainable growth. This project engineers an **End-to-End Data Analytics Solution** to transform raw transaction data into actionable business intelligence.

By processing over **1,000,000 transaction records** using advanced SQL logic and visualizing insights via Power BI, this system identifies high-value customer cohorts and detects "Silent Churn" risks before they impact the bottom line.

> **Key Achievement:** Successfully segmented the customer base into **11 distinct behavioral profiles**, identifying the top **20% of customers** who contribute **80% of revenue** (Pareto Principle validation).

---

## 💼 Business Problem & Objective

**The Challenge:**
A mid-sized e-commerce retail enterprise faced stagnating growth and declining repeat purchase rates. The marketing team relied on "spray and pray" mass marketing due to a lack of granular customer insights. They could not distinguish between a *Loyal Customer* and an *At-Risk Customer* who hasn't purchased in months.

**The Objective:**
1.  **Decipher Customer Behavior:** Move beyond basic demographics to behavioral analysis (Recency, Frequency, Monetary).
2.  **Precision Targeting:** Segment customers to enable hyper-personalized marketing campaigns and product recommendations.
3.  **Churn Prevention:** Proactively identify "At Risk" and "Hibernating" segments for immediate win-back actions.

---

## 🛠️ Solution Architecture & Tech Stack

This project simulates a real-world data pipeline from Raw Data to Strategic Dashboard.

| Phase | Tool | Techniques Deployed |
| :--- | :--- | :--- |
| **1. Data Extraction** | `CSV / Flat Files` | Handling large-scale datasets (1M+ rows) containing Transaction Logs & Customer Registries. |
| **2. Data Engineering** | **SQL Server** | • **ETL Processes:** Data cleaning, type casting (`TRY_CAST`), and null handling.<br>• **Advanced Logic:** Utilized **CTEs** for modular code and **Window Functions (`NTILE`)** for dynamic scoring.<br>• **Data Modeling:** Created a unified schema joining Transactional and Behavioral data. |
| **3. Visualization** | **Power BI** | • **DAX:** Calculated dynamic measures for Repeat Purchase Rate, AOV (Average Order Value), and Customer Lifetime Value.<br>• **UX/UI:** Designed a Dark-Mode, Z-Pattern dashboard for executive decision-making.<br>• **Storytelling:** Used Custom Tooltips and Conditional Formatting to highlight anomalies. |

---

## 📊 Methodology: The 11-Segment RFM Model

Instead of a simple "High/Medium/Low" classification, I architected a granular **11-Segment Model** to provide specific actionable recommendations for each group.

* **Scoring Logic:** Customers are scored from 1-4 on Recency, Frequency, and Monetary value using SQL `NTILE(4)`.
* **Segmentation Logic:**

| Segment | RFM Characteristics | Strategic Action |
| :--- | :--- | :--- |
| 🥇 **Champions** | Purchased recently, buy often, and spend the most. | **Reward:** VIP treatment, exclusive discounts, early access to new products. |
| 🥈 **Loyal Customers** | Spend good money and purchase frequently. Responsive to promotions. | **Upsell:** Recommend premium products, bundle offers, or loyalty rewards. |
| 🚨 **At Risk** | Spent significant amounts and purchased frequently but haven't returned in a long time. | **Win-back:** Send personalized emails, exclusive comebacks offers, or surveys to understand concerns. |
| 💤 **Hibernating** | Last purchase was long ago, historically low spenders. | **Optimise:** Limit ad spend, re-engagement campaigns via low-cost channels or seasonal promotions. |
| *...and 7 others* | | |

---

## 📈 Key Insights & Recommendations

Based on the analysis of the dataset, the following strategic insights were uncovered:

### 1. The "Pareto" Reality
The **Champions** and **Loyal Customers** make up only **~25%** of the user base but drive **~65%** of total revenue.
> **Recommendation:** Shift 40% of the acquisition budget to **Retention Programs** for these VIPs. Losing one Champion is equivalent to acquiring and nurturing 100 new customers.

### 2. The "Silent Churn" Threat
A significant portion of high-value users falls into the **"Cannot Lose Them"** and **"At Risk"** categories (High Monetary, Low Recency).
> **Recommendation:** Trigger an automated "We Miss You" campaign offering a personalized discount (10-15%) on their favorite product categories for any user flagged in this bucket.

### 3. Operational Bottlenecks
Analysis revealed performance discrepancies across different **Sales Channels/Markets**. Specific channels show a higher-than-average churn rate despite strong acquisition.
> **Recommendation:** Conduct an operational audit on underperforming channels to optimize the customer experience and checkout process.

---

## 🖼️ Dashboard Preview

### 1. Executive Overview (Customer Health Status)
*(Place screenshot of your main dashboard page here)*
![Dashboard Overview](Link_to_your_image_here)

### 2. Detailed Customer Matrix
*(Place screenshot of your matrix/detail page here)*
![Matrix View](Link_to_your_image_here)

---

## 💻 How to Reproduce This Analysis

1.  **Clone the Repository:**
    ```bash
    git clone [https://github.com/username/Customer-Segmentation-RFM-Analysis.git](https://github.com/username/Customer-Segmentation-RFM-Analysis.git)
    ```
2.  **Database Setup:**
    * Import `Customer_Registered.csv` and `Customer_Transaction.csv` into SQL Server.
    * Run the script `RFM_Query.sql` to clean data and generate segments.
3.  **Power BI:**
    * Open `Customer Segmentation & RFM Analysis.pbix`.
    * Refresh the data source connection.

---

## 📬 Contact

**Data Analyst** - *Portfolio Project*
* [LinkedIn](https://www.linkedin.com/in/pham-ngoc-khanh/)
* [Email](mailto:khanhpn.forwork@gmail.com)

---
*Note: This project uses real e-commerce transaction data for demonstration purposes.*
