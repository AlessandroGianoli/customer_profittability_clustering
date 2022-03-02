# customer_profittability_clustering
Multi-target unsupervised model, based on k-Means clustering method from Sckit-Learn, designed to divide customers into profittability classes.
In the folder B_jupyter_notebook is included the whole pipeline that has been divided into 3 Jupyter Notebook.

# Methodology:

The analysis uses a sample dataset of selling transaction of a 2 years period from a company specialized in selling serviced through a online portal. The dataset contains the following features:  

- User_id -> unique key for any customer
- Created_at -> date of invoice
- Invoice_id –> invoice number
- Ricavo -> invoice amount

1)	In the first notebook has been done all the Data Cleaning process over the dataset. Then has been created the Recency, Frequency, Monetary scores and the Response feature. 

2)	In the second notebook firstly has been created a new score feature, called recency_weighted, that takes in account the ageing of the recency giving a higher value to the recent transactions over the older. Secondly the whole dataset has been divided in monthly period of time. 
Finally, it has been done some data exploration, analysing the distribution of the features for any monthly period of time and the correlation between the features.

![image](https://user-images.githubusercontent.com/69951596/156302186-6d01450a-c6cb-488a-a63a-3ca2d4c1499b.png)

![image](https://user-images.githubusercontent.com/69951596/156302138-de90d2d7-71ef-458c-ad73-b07b05ace06b.png)

![image](https://user-images.githubusercontent.com/69951596/156302156-e9fb2b2c-611f-4ac0-ac89-8a2fad4177e2.png)

3) For each of the 24 monthly periods, each of the 3 metrics recency, frequency and monetary has been divided into **deciles**. In this way it have been obtained respectively r_score, f_score, m_score.
Al the monthly periods have been **normalized** using the **Sklearn MinMaxScaler**.
According to the Silhouette (see the graph below) it has been defined the optimal number of cluster.  

![image](https://user-images.githubusercontent.com/69951596/156303494-890dce77-99e1-4288-a2c6-7d3a6f365d3d.png)

![image](https://user-images.githubusercontent.com/69951596/156303904-08b7a6d6-5448-4c72-9504-187d6c13198f.png)

 Then, it has been applied the  **Sklearn K-Means algorithm**. The final output can be analyzen in the graph below.
 
![image](https://user-images.githubusercontent.com/69951596/156304135-3ad42665-9ece-4bbb-b716-ee71c3aeb3a3.png)

![image](https://user-images.githubusercontent.com/69951596/156304492-803ad22b-d6dc-4e52-ab2a-861e5d01ad91.png)

 
 

