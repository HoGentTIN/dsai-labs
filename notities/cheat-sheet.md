# Basic Commands

- Import Python libraries
```python
# Importing the necessary packages
import numpy as np                                  # "Scientific computing"
import scipy.stats as stats                         # Statistical tests

import pandas as pd                                 # Data Frame
from pandas.api.types import CategoricalDtype

import matplotlib.pyplot as plt                     # Basic visualisation
from statsmodels.graphics.mosaicplot import mosaic  # Mosaic diagram
import seaborn as sns                               # Advanced data visualisation
```

- Import .csv file
```python

# Delimiter depends on the .csv file (usually , or ;)
ais = pd.read_csv('../data/ais.csv', delimiter=',')
```

- General information
```python
# Set the known identifier as the index
titanic.set_index(['PassengerId'])

# Convert Quantitative to Qualitative (categorical)

titanic.Survived = titanic.Survived.astype('category')

# Mark variables as ordianal 
# (S, C and Q are locations where passangers embarked and this was in order or ports)
# Order will always be respected including in graphs

embarked_type = CategoricalDtype(categories=['S', 'C', 'Q'], ordered=True)
titanic.Embarked = titanic.Embarked.astype(embarked_type)

# Select all data from a single variable
titanic['Age']

# Select multible columns
titanic[['Name', 'Age', 'Cabin']] # Note: two sets of square brackets!

# Select the *5th* observation (ENTRY
titanic.iloc[5]

# Select the first 4 ovebservations (ENTRY)
titanic.iloc[0:4]

# Select observations where the value of Age is less than 18
titanic[titanic.Age < 18]  

# The same, but only keep the column 'Embarked'
titanic[titanic.Age < 18].Embarked

# The same, but keep columns 'Age' and 'Embarked'
titanic[titanic['Age'] < 18][['Age', 'Embarked']]

# Select all boys younger than 10
titanic.query("(Sex=='male') and (Age < 18)")

# Drop column
titanic.drop("PassengerId", axis="columns", inplace="true") # inplace true changes the dataframe itself, without it you can copy the dataframe to a variable were it will be dropped

# Drop any row that has at least one missing value
cleaned = titanic.dropna() 

# Drop only rows that consist of nothing but missing values
cleaned = titanic.dropna(how="all") 

# Show the first 5 records of the dataframe
ais.head()

# Number of (total) records
len(ais)

# Data types of all columns
ais.info()

# Column names
ais.columns

# Number of rows and columns
ais.shape

# Round to 2 number after ,
print(f"{number:.2f}")
```
- Using multible data points for a plot (use a directory) ()

```python
sns.boxplot(
    data={'Regular': regular, 'Additives': additives}
```



# Math symbols

## Getalverzamellingen

- ℝ = Verzameling van de reële getallen (alle decimale getallen)
- 𝜇 = Het gemiddelde
- x̄ = Sample mean (gemiddelde), wordt gebruikt in hypothesis testing tegenover 𝜇  
- 𝜎² : The Variance (population)
- σ  Standaard afwijking (sigma) | It shows how spread out the values in a dataset are (Low STD means most data points are close to the mean, High STD means the data points are more spread out aka more variability)
- $\alpha$ - Siginificance level | 
- 𝛼 - P(tyile I error in hypothesis testing) | False positive
- 𝛽 - P(type II error in hypoyhesis testing) | Falsenegative
- ≃ - Approximatly equal to (Used when values are very close but not excactly the same)

## H4

- z
- χ² Chi-squared - Used in hypothesis testing between 2 qualitative variables to reject or accept H0
- $\pi_i$ - Relative (Percentage)
- $o_i$ - Absoulute values


- 𝛺 = `\universe`
- ∩ = `\intersection` | Example [ A = {1, 2},\ B = {2, 3} \implies A \cup B = {2} ] | AND
- ∅ = `\concept of nothing`
- ∪ = `\union` | Example: [ A = {1, 2},\ B = {2, 3} \implies A \cup B = {1, 2, 3} ] | OR


