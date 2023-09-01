Data Scientist at Kalbe Nutritionals
This is a Project about my internship at Kalbe Nutritionals as a Data Scientist

# Data Scientist Project at Kalbe  Nutritionals
## Background Story
KALBE Nutritionals is part of PT KALBE Farma Tbk. which is one of the leading pharmaceutical companies from Indonesia and has been recognized on a national and international scale. Kalbe Nutritionals is optimizing its Inventory management and marketing strategy. The inventory team wants to predict the daily sales of products to manage the stock well. The Marketing team wanted to create customer groups based on preferences for more personalized promotions.
## Business Understanding
##### Problem Statment
The Inventory team needs to predict the daily quantity of products sold to keep stocks optimized. Over-stocking can be wasteful, while under-stocking can hurt sales. The marketing team needs customer groups for more effective promotion strategies.

##### Goals
* Machine Learning Regression (Time Series) to be able to predict the daily total quantity
of products sold.
* Machine Learning Clustering to create clusters of similar customers.

##### Solution Statment
* Daily Sales Prediction (Inventory Team): Develop a Machine Learning model to predict the daily sales quantity of Kalbe Nutritionals products. The model will consider factors such as seasonality, holidays, and daily trends, thus helping to optimize daily stock and inventory.
* Customer Segmentation (Marketing Team): Using cluster analysis to categorize customers based on purchase data, preferences, and other attributes. By doing so, the marketing team can design promotional campaigns that are more relevant and tailored to the characteristics of each customer group.

## Data Understanding
This dataset consists of 4 CSV files namely customer, store, product, and transaction. It is dummy data for the FMCG case study within 1 year taken through a membership program.
Description:
1. Customer
- CustomerID: Customer Unique Number
- Age: Customer's Age
- Gender : 0 Female, 1 Male
- Marital Status: Married, Single (Not married / Previously married)
- Income: Income per month in million rupiah

2. Store
- StoreID: Unique Store Code
- StoreName : Store Name
- GroupStore: Group name
- Type: Modern Trade, General Trade
- Latitude: Latitude Code
- Longitude: Longitude Code

3. Product
- ProductID: Product Unique Code
- Product Name: Product Name
- Price: Price in rupiah

4. Transaction
- TransactionID: Unique Transaction Code
- Date: Date of transaction
- Qty: Number of items purchased
- Total Amount: Price x Qty
 
Do exploratory data analysis in Dbeaver queries such as What is the average age of customers when viewed from their marital status? What is the average age of customers when viewed from their gender? Determine the store name with the highest total quantity! Determine the name of the best-selling product with the highest total amount! Query Refresnsi can be seen [here](https://github.com/AqilaFadia/Data-Scientist_Kalbe-Nutritionals/blob/main/Query.sql)
download Dbaver [here](https://dbeaver.io/)
What is Dbaver can be read [here](https://www.rumahweb.com/journal/dbeaver-adalah/)

### Dashboard Kalbe Nutritionals
![Dashboard](https://github.com/AqilaFadia/Data-Scientist_Kalbe-Nutritionals/blob/main/Dashboard%20Kalbe%20Nutritionals.png)

Through Kalbe Nutritional's sales dashboard visualization in Tableau, it was found that the product most purchased by customers is "Thai Tea". In addition, in the data analysis, the "Lingga" store emerged as the store with the largest total amount of revenue. Over a period of a month, it was seen that the total daily revenue remained stable. However, interestingly, in the third month, there was a significant spike in sales, indicating outstanding performance in that period.

## Machine Learning Time Series
![Autocorelation](https://github.com/AqilaFadia/Data-Scientist_Kalbe-Nutritionals/blob/main/Dashboard%20Kalbe%20Nutritionals.png)
The visualization above shows autocorrelation against various lags in the data. Autocorrelation measures the similarity of the data to itself at different times. The general pattern of autocorrelation is close to zero for most lags, but decreases at lags around 15, indicating a repeating cycle every 15 times. This confirms the stationary nature of the data, with no obvious trends or seasonal patterns.

![Autocorelation](https://github.com/AqilaFadia/Data-Scientist_Kalbe-Nutritionals/blob/main/Dashboard%20Kalbe%20Nutritionals.png)
The autocorrelation and partial autocorrelation visualization results show a similar pattern, with an emphasis on the first lag. This pattern indicates a recurring cycle at a lag of about 15 and a direct influence from the previous point at the first lag. The influence from other times is less significant.

![Autual vs Forecast](https://github.com/AqilaFadia/Data-Scientist_Kalbe-Nutritionals/blob/main/Dashboard%20Kalbe%20Nutritionals.png)

The graph line titled "Actual vs. Forecast" shows the comparison between the actual and forecast values of a variable over time. Based on the graph, the following conclusions can be drawn:
* The actual value has a larger variation than the forecast value, which means that there are other factors affecting the variable besides trends and seasonality.
* The forecast value decreases around November 2022, which indicates that there is a possibility of a decrease in demand or supply of the variable in the future.
* The confidence interval line indicates the range of values within which the actual value is likely to lie with a certain level of confidence. The wider the range, the higher the forecast uncertainty. From the graph, it appears that the confidence interval range is quite narrow, which means that the forecast has a fairly good level of accuracy.

## Machine Learning Clustering
![Elbow Method](https://github.com/AqilaFadia/Data-Scientist_Kalbe-Nutritionals/blob/main/Dashboard%20Kalbe%20Nutritionals.png)
This elbow can be used to determine the optimal number of data groups for clustering. This Elbow shows that the best value of k is 4, because after that the decrease in within-cluster sum of squares (WCSS) value becomes very small. The WCSS value is the sum of squares of the distance between each data and its group center. The smaller the WCSS value, the better the clustering. However, if the k value is too large, the clustering will be inefficient and uninformative. Therefore, this elbow can help you to choose a k value that suits your data.

![labels cluster](https://github.com/AqilaFadia/Data-Scientist_Kalbe-Nutritionals/blob/main/Dashboard%20Kalbe%20Nutritionals.png)
![Silhoutte Analysis](https://github.com/AqilaFadia/Data-Scientist_Kalbe-Nutritionals/blob/main/Dashboard%20Kalbe%20Nutritionals.png)

The image is a scatter plot that has four different groups of data. Each group of data is labeled with the numbers 0, 1, 2, or 3. The x and y axes in the figure are pc1 and pc2. Data that belong to the same group have the same color in the figure. Group 0 is pink and is located in the upper left corner. Group 1 is purple and is located in the lower left corner. Group 2 is black and located in the upper right corner. Group 3 is blue and is located in the lower right corner. The data in Group 0 and Group 3 are denser than the data in Group 1 and Group 2. This clustering can be used to group data based on the similarity or distance between the data. Data belonging to the same group have closer pc1 and pc2 values than data belonging to different groups. This clustering can help to find patterns or relationships between data.

* Cluster 0 (label 0): Customers in this cluster tend to have a purchasing pattern with a moderate number of products (Qty) and a relatively low total expenditure (TotalAmount). The age of customers tends to be around 36 years old. All customers in this cluster are Female (Gender = 0), and the income of customers in this cluster is around 3.70.
* Cluster 1 (label 1): Customers in this cluster tend to have a purchasing pattern with a lower number of products (Qty), which results in a lower total expenditure (TotalAmount). The age of customers tends to be around 36 years old. All customers in this cluster are Female (Gender = 0), and the income of customers in this cluster is around 10.53.
* Cluster 2 (label 2): Customers in this cluster tend to have a purchase pattern with a high number of products (Qty), which results in a high total expenditure (TotalAmount). The age of customers tends to be older, around 44 years old. All customers in this cluster are Male (Gender=1), and the income of customers in this cluster is around 14.58.
* Cluster 3 (label 3): Customers in this cluster tend to have a pattern of purchasing a moderate number of products (Qty), which results in a relatively low total expenditure (TotalAmount). The age of customers tends to be younger, around 27 years old. All customers in this cluster are Male (Gender = 1), and the income of customers in this cluster is very low, only around 0.18.

## Business Recommendation
* Cluster 0 (label 0):
Recommended: For this cluster, you can focus on offering mid-priced products that still provide good quality. Provide special offers or discounts to encourage further purchases.
Example: Create a mid-priced product package that includes several related products, and offer discounts to customers of this cluster.
* Cluster 1 (label 1):
Recommendation: Focus on lower-priced products to attract the attention of this cluster's customers. Offer regular discounts or purchase rewards to encourage more purchases.
Example: Create a loyalty program that gives discounts or rewards every time customers from this cluster shop.
* Cluster 2 (label 2):
Recommendations: Offer premium or luxury products that match the preferences of this cluster's customers. Provide an exclusive shopping experience and excellent customer service.
Example: Create an exclusive collection of products available only to customers of this cluster, and hold an exclusive event to launch it.
* Cluster 3 (label 3):
Recommendations: Focus on affordable products that meet the needs of customers from this cluster. Create flexible payment strategies to help those with low incomes.
Example: Offer installment payment options or membership programs that allow customers from this cluster to purchase products more easily.


## Refrensi
* https://kalbenutritionals.com/id/tentang-kami/umum
* https://dbeaver.io/
* https://www.kaggle.com/code/freespirit08/time-series-for-beginners-with-arima
* https://analyticsindiamag.com/comprehensive-guide-to-time-series-analysis-using-arima/
* https://analyticsindiamag.com/quick-way-to-find-p-d-and-q-values-for-arima/

















