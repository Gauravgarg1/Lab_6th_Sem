import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.cluster import KMeans
from sklearn.metrics import silhouette_score
data=pd.read_csv('Mall_Customers.csv')
print(data.head())
inVsout=data.iloc[:,[3,4]]
inVsout
plt.scatter(inVsout.iloc[:,0],inVsout.iloc[:,1])
kmeans=KMeans(n_clusters=4)
kmeans.fit(inVsout)
plt.scatter(inVsout.iloc[:,0],inVsout.iloc[:,1], c=kmeans.labels_,cmap='rainbow')
plt.show()
inVsout[kmeans.labels_==2]
silhouette_score(inVsout,kmeans.labels_)