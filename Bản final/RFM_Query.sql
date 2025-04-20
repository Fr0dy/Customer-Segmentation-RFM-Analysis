WITH Data_Clean AS (
    SELECT
        TRY_CAST(CustomerID AS INT) as CustomerID,
        TRY_CONVERT(DATE, Purchase_Date, 101) as Purchase_Date_Clean,
        TRY_CAST(GMV AS FLOAT) as GMV_Clean
    FROM
        dbo.Customer_Transaction
    WHERE
        TRY_CAST(GMV AS FLOAT) > 0
),

RFM_Score AS (
    SELECT
        *,
        -- Chia điểm 1-4 bằng NTILE
        NTILE(4) OVER (ORDER BY Recency_Value DESC) AS R_Score,
        NTILE(4) OVER (ORDER BY Frequency_Value ASC) AS F_Score,
        NTILE(4) OVER (ORDER BY Monetary_Value ASC) AS M_Score
    FROM
        RFM_Base
),


Final_Segmentation AS (
    SELECT
        CustomerID,
        Recency_Value, Frequency_Value, Monetary_Value,
        CAST(R_Score AS VARCHAR) + CAST(F_Score AS VARCHAR) + CAST(M_Score AS VARCHAR) AS RFM_String,
        R_Score, F_Score, M_Score,
        CASE
            WHEN (R_Score >= 4 AND F_Score >= 4 AND M_Score >= 4) OR (R_Score >= 3 AND F_Score >= 4 AND M_Score >= 4) THEN 'Champions'
            WHEN (R_Score >= 3 AND F_Score >= 3 AND M_Score >= 3) THEN 'Loyal Customers'
            WHEN (R_Score >= 3 AND F_Score >= 2 AND M_Score >= 2) THEN 'Potential Loyalist'
            WHEN (R_Score >= 4 AND F_Score <= 1) THEN 'New Customers'
            WHEN (R_Score >= 3 AND F_Score <= 1) THEN 'Promising'
            WHEN (R_Score >= 2 AND F_Score >= 2 AND M_Score >= 2) THEN 'Need Attention'
            WHEN (R_Score >= 2 AND F_Score <= 2) THEN 'About To Sleep'
            WHEN (R_Score >= 4 AND F_Score >= 4 AND M_Score >= 4) THEN 'Cannot Lose Them'
            WHEN (R_Score <= 2 AND F_Score >= 3 AND M_Score >= 3) THEN 'At Risk'
            WHEN (R_Score <= 2 AND F_Score <= 2 AND M_Score <= 2) THEN 'Hibernating'
            WHEN (R_Score = 1 AND F_Score = 1 AND M_Score = 1) THEN 'Lost'
            ELSE 'Others'
        END AS Customer_Segment
    FROM
        RFM_Score
)

SELECT * FROM Final_Segmentation
ORDER BY R_Score DESC, M_Score DESC;
