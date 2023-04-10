#!/usr/bin/env python

# Import our libarires
import pandas as pd
import numpy as np
from sklearn.decomposition import PCA
import matplotlib.pyplot as plt

# Read MNIST data from csv
data = pd.read_csv('MNIST_100.csv')

# make two variables - X and y
y = data.iloc[:, 0]
X = data.drop('label', axis=1)

# Visualize the data with scikit-learn's PCA package
pca = PCA(n_components=2)
pca.fit(X)
PCAX = pca.transform(X)

# Labels for legend
nums = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

# Plot data
plt.scatter(PCAX[0:100, 0], PCAX[0:100, 1]) # Digit 0
plt.scatter(PCAX[100:200, 0], PCAX[100:200, 1]) # Digit 1
plt.scatter(PCAX[200:300, 0], PCAX[200:300, 1]) # Digit 2
plt.scatter(PCAX[300:400, 0], PCAX[300:400, 1]) # Digit 3
plt.scatter(PCAX[400:500, 0], PCAX[400:500, 1]) # Digit 4
plt.scatter(PCAX[500:600, 0], PCAX[500:600, 1]) # Digit 5
plt.scatter(PCAX[600:700, 0], PCAX[600:700, 1]) # Digit 6
plt.scatter(PCAX[700:800, 0], PCAX[700:800, 1]) # Digit 7
plt.scatter(PCAX[800:900, 0], PCAX[800:900, 1]) # Digit 8
plt.scatter(PCAX[900:1000, 0], PCAX[900:1000, 1]) # Digit 9
plt.xlabel('Principal 1')
plt.ylabel('Principal 2')
plt.title('MNIST PCA Representation')
plt.legend(nums, ncol = 2)
plt.show()
PCAX