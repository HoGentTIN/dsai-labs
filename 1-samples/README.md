# Labs module 1: Basic Concepts, Sampling

## Lab 1.1 - Australian Athletes (ais)

1. Create a Jupyter Notebook file `labo-1-01.ipynb` in this directory.
2. Make sure the first cell is a Markdown cell, and give it a title (e.g. `# Lab 1.1`).
3. Add a Python cell and copy all the imports you need for data analysis from the code examples (Numpy, Pandas, etc.) into that cell.
4. Add a new Python cell and load the CSV file `data/ais.csv` into a variable `ais`. This dataset contains 202 observations of Australian athletes with a variety of blood values. You can find the codebook (i.e., the explanation of what each variable/column in the dataset means) in [data/ais.md](/data/ais.md). Show the first few observations of this sample.
5. Get general information about this dataset:
    - How many rows and columns does the dataset have?
    - Show general information about each variable, specifically the number of empty fields and the type of each variable (e.g., int64, float64, object)
    - How many columns of each type are there?
    - What is the measurement level (nominal, ordinal, interval, ratio) of each variable?
6. The column "id" is not an actual variable, but an index. Mark it as such.
7. The variables that are now considered "object" are qualitative variables. Change the type of each of these variables to "category". For ordinal variables, also define a type and impose an order. Verify that the conversion was successful by requesting info about the types again.
8. Describe the columns `ferr`, `bmi`, `sex` and `sport` and the unique values in each of these columns. Do you recognize the characteristics of qualitative and quantitative variables in the result?
9. Select following elements from the dataset:
    - the second row (ids = 2)
    - rows 4 to 6 (ids = 5 to 7)
    - Columns 6 to 8 (`ferr`, `bmi`, `ssf`)
    - the variable `pcBfat` (by name!). There are multiple ways to retrieve this!
    - all observations for the sport "Netball"
    - just the variable `wt` of the observations for "Netball"
    - which sports are played by athletes with a BMI higher than 26? Also, provide a list of the unique values and a frequency table of how often each sport occurs.
    

## Lab 1.2 - Android Persistence

1. Create a new Jupyter Notebook file for this lab, copy the imports and load the dataset `data/android_persistence.csv`. See the [description](../data/android_persistence_cpu.md) for more info on the contents. Note this file is not stored as a regular CSV file!
2. Explore the dataset:
    - How many variables and observations are present in the dataset?
    - What is the level of measurement of each variable?
    - Perform the conversion of the qualitative variables to the appropriate type (and specify the order of ordinal variables).
    - List the data types in the dataset.
3. Describe of each variable.
4. What unique values are there for the variables `PersistenceType` and `DataSize`? How often does each value occur?
5. In this dataset, it is especially interesting to know how often each unique combination of `PersistenceType` and `DataSize` occurs. Figure out how to use the Pandas function `crosstab()` to create a so-called cross table for these variables. By the way, this concept will return in Module 4 (examining the relationship between 2 qualitative variables).