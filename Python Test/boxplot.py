#!/usr/bin/env python

# Import our libraries
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# Read Housing data from csv
data = pd.read_csv('housing_training.csv', usecols = [10, 12, 13])

# Plot the data
plt.boxplot(data)
plt.xticks([1, 2, 3], ['PTRATIO', 'LSTAT', 'MEDV'])
plt.title('Housing Data Boxplot')
plt.show()