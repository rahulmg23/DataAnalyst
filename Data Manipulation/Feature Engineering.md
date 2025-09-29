**Feature Engineering**



**Handling the missing data in a dataset**



import seaborn as sns



df = sns.load\_dataset('name')



df.head()    will print the top



df.isnull()  will return the all the null values in true



df.isnull().sum() will return the sum of all the values



df.shape will show all the values



df.dropna().shape





**DELETING THE NULL VALUES COLUMN WISE**



df.dropna(axis = 1)  (,inplace = true) will make it permanent







**IMPUTATION TECHNICQUES**



**1 MEAN VALUE IMPUTATION**



sns.displot(df\['age'])  	    will show all the age columns



sns.histplot(df\['age'], kde = True) will show the symmetry





Replacing the nan values with the mean



df\['age\_mean'] = df\['age'].fillna(df\['age'].mean)

df\[\['age\_mean', 'age']]



mean imputation works well when we have a normally distributed data



**2 MEDIAN VALUE IMPUTATION**

For right skewed and left skewed we will use median value imputation when we have outliers in the dataset



for plotting the graph



sns.displot(df\['age'])





df\['age\_median']=df\['age'].fillna(df\['age'].median)

df\[\['age\_median', 'age']]



3 MODE VALUE IMPUTATION



df

