#!/usr/bin/env python

# Import our libraries
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# Read Housing data from csv file
data = pd.read_csv('housing_training.csv', usecols = [0])

# Plot the data
plt.hist(data)
plt.yticks([0, 50, 100, 150, 200], [0.0, .5, 1.0, 1.5, 2.0])
plt.xticks([1], ['CRIM'])
plt.title('Housing Data Histogram')
plt.show()