#!/usr/bin/env python
# coding: utf-8

# In[3]:


import pandas as pd
import numpy as np
import seaborn as sns


# In[4]:


# Read in the data

df = pd.read_csv(r'C:\Users\toluf\OneDrive\Desktop\DA - Project\SQL + PowerBI\HR data set.csv')


# In[5]:


df.head()


# # EXPLORATORY DATA ANALYSIS

# In[6]:


df.shape


# In[7]:


df.columns


# In[8]:


df.info


# In[9]:


df.isnull().sum()


# In[12]:


df


# In[11]:


#What is the gender breakdown of employees in the company?
df['gender'].value_counts()


# In[13]:


#What is the race/ethnicity breakdown of employees in the company?
df['race'].value_counts()


# In[15]:


#What is the age distribution of employees in the company?
df['jobtitle'].value_counts()


# In[14]:


#How many employees work at headquarters versus remote locations?
df['location'].value_counts()


# In[23]:


df.describe()


# In[28]:


df.nunique()


# In[ ]:





# In[ ]:




