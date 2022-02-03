# Labs module 2: Analysis of one variable

## Lab 2.1 - Australian Athletes (ais)

1. Create a new Jupyter Notebook file and load the AIS dataset. Use the code from lab 1.1, including setting the index and the conversion to categorical variables.
2. Use an appropriate chart type to visualise the following variables. Are several chart types suitable? Make one of each! Note how some graphs nevertheless give a better insight into the data than other types of graphs.
   - `sex`
   - `sport`
   - `ht` (show this also divided by `sex` and by `sport`.)
3. Select the following subsets from the dataset and calculate for each the appropriate centrality (and, when possible, dispersion) measures of the variables `ht` and `sex`:
   1. the rowers
   2. the rowers, netballers and tennis players together
   3. the female basketball players and rowers together

As a check, here are the results of the last question. First the frequencies and mode of the variable `sex`:

|           | Selection 1 | Selection 2 | Selection 3 |
| :-------- | :---------- | :---------- | :---------- |
| **f**     | 22          | 52          | 35          |
| **m**     | 15          | 19          | 0           |
| **mode**  | f           | f           | f           |

Then the relevant centrality and dispersion measures for `ht` (max. 3 decimal places):

| Statistic  | Selection 1 | Selection 2 | Selection 3 |
| :--------- | :---------- | :---------- | :---------- |
| mean       | 182.376     | 179.066     | 180.126     |
| stdev      | 7.798       | 7.936       | 7.144       |
| min        | 156         | 156         | 156         |
| Q1         | 179.3       | 174.25      | 177.4       |
| median     | 181.8       | 179.5       | 179.7       |
| Q3         | 186.3       | 183.4       | 184.65      |
| max        | 198         | 198         | 195.9       |
| IQR        | 7           | 9.15        | 7.250       |

## Lab 2.2 - Android Persistence

1. Start a new Notebook file for the Android Persistence dataset. Do not forget the conversion to categorical variables. Define an order in case of an ordinal variable.
2. Visualise the variables `DataSize` and `PersistenceType` separately using a suitable chart type.
3. How often does each combination of `DataSize` and `PersistenceType` occur? Show the frequencies of `PersistenceType` (parameter `hue`), grouped according to `DataSize` (parameter `x`). Try it the other way round too!
4. Visualise the variable `Time` with a boxplot, each time with more detail. Do you notice how you get a better view of the data each time you do this?
    - First over the entire dataset (parameter `x`)
    - Then grouped according to `DataSize` (parameter `y`)
    - Finally, split it according to `PersistenceType` (parameter `hue`)
5. (Challenge) Try to do something similar with a density graph: for each value of `DataSize`, show a scatter diagram showing a density graph of the variable `Time` for each value of `PersistenceType` (tip: `sns.FacetGrid()`). The result may look something like this:

    ![Density graphs for each `DataSize`, comparing the performance of different `PersistenceTypes`](img/persistence-density.png)

6. Calculate mean and standard deviation of `Time`.

    - Across the whole dataset
    - Broken down according to `DataSize
    - Broken down according to `PersistenceType`
    - Broken down according to `DataSize` and `PersistenceType`

As a check, you can find the expected results here (max. 3 decimal places):

| Statistic         | Mean       | Standard deviation |
| :---------------- | :--------- | :----------------- |
| Whole dataset     | 6.231      | 4.230              |
| Small             | 1.741      | 0.359              |
| Medium            | 7.022      | 1.864              |
| Large             | 11.426     | 1.164              |
| GreenDAO          | 7.152      | 4.386              |
| Realm             | 6.023      | 3.884              |
| SQLite            | 7.036      | 4.146              |
| SharedPreferences | 1.674      | 0.285              |

Split on both criteria:

| Man                   | Small | Medium | Large  |
| :-------------------- | :---- | :----- | :----- |
| **GreenDAO**          | 1.894 | 7.454  | 12.110 |
| **Realm**             | 1.599 | 5.818  | 10.652 |
| **SQLite**            | 1.799 | 7.794  | 11.515 |
| **SharedPreferences** | 1.674 | -      | -      |

| Standard deviation    | Small | Medium | Large |
| :-------------------- | :---- | :----- | :---- |
| **GreenDAO**          | 0.348 | 2.007  | 0.868 |
| **Realm**             | 0.315 | 1.331  | 1.406 |
| **SQLite**            | 0.416 | 1.599  | 0.559 |
| **SharedPreferences** | 0.285 | -      | -     |
