https://numpy.org/devdocs/reference/generated/numpy.quantile.html

# Mode

Meest voorkomende value in de dataset (In dit geval komt de value "2" het meeste voor van het kollom size)

```python
tips['size'].mode()
# Remark that tips.size is not possible here, as `size` is an attribute of the DataFrame `tips`
```

# Mean

Het gemiddelde

```python
tips.total_bill.mean()
```


```python
tips.total_bill.median()
# OF
np.median(tips.total_bill)
```
# Quartiles and percentiles

```python
# Calculating Median & related measures of dispersion:
print(f"Minimum:              {tips.tip.min()}")
print(f"Median:               {tips.tip.median()}") # np.median(tips.tip)
print(f"Maximum:              {tips.tip.max()}")
percentiles = [0.0, 0.25, 0.5, 0.75, 1.0]
print(f"Percentiles           {percentiles}\n{tips.tip.quantile(percentiles)}" )
print(f"Inter Quartile Range: {stats.iqr(tips.tip)}")
print(f"Range :               {tips.tip.max() - tips.tip.min()}")

# Je kan ook veel vinden via .describe()

# Enkel quantitatief

tips.tip.describe()

# count    244.000000
# mean       2.998279
# std        1.383638
# min        1.000000
# 25%        2.000000
# 50%        2.900000
# 75%        3.562500
# max       10.000000
# Name: tip, dtype: float64
```
## Median

The median is the middle value of a sorted array, in case the array is even, the median value is the average of the two middle values. (the amoubnt of values before n5 and n6 **NEED TO BE THE SAME** *in this case 3*)
Example:

n = 10 (tellen van 1)

Median = (n5 + n6) / 2

## Minimum and Maximum

Vanzelfsprekend max en min value in de dataset

## IQR (Interquartile Range)

IQR:

The Interquartile Range (IQR) is a measure of statistical dispersion, which represents the range within which the middle 50% of the data lies. It is calculated as the difference between the third quartile (Q3) and the first quartile (Q1):

IQR = Q3 - Q1

Q1 (First Quartile): The value below which 25% of the data falls.
Q3 (Third Quartile): The value below which 75% of the data falls.
The IQR is useful because it is not affected by extreme values (outliers) and provides a robust measure of variability in the dataset.

Steps to Calculate IQR:
Arrange the data in ascending order.
Find Q1 (25th percentile) and Q3 (75th percentile).
Subtract Q1 from Q3 to get the IQR.

## Range

Maximum - Miniumum

# Variance and Standard Deviation

```python
# Pandas: mean, standard deviation and variance
print(f"Mean:                 {tips.tip.mean()}")
print(f"Standard deviation:   {tips.tip.std()}") # Pay attention: n-1 in the denominator
print(f"Variance:             {tips.tip.var()}") # Pay attention: n-1 in the denominator
```

## Variantie

Hoeveer zijn de waardes (gemiddeld) verwijderd van het gemiddelde (het is het gemiddelde van de kwadraten van de afwijkingen ten opzichte van het gemiddelde)

## Standaardafwijking

De standaardafwijking is de vierkantswortel van de variantie

Richt aan hoe dicht de waardes aansluiten bij het gemiddelde 

# Skewness and kurtosis

```python
# Skewness and kurtosis:
print(f"Skewness:             {tips.tip.skew()}")
# een positieve Skewness betekent rechter-scheef (lange rechterstaart)
# een negatieve Skewness betekent linkerscheef (lange linkerstaat)
print(f"Kurtosis:             {tips.tip.kurtosis()}")
# een hoge Kurtosis betekent zwaarte staarten / scherpe piek
# een lage Kurtosis betekent lichte staarten / plattere verdeling
```

## Skewness

Een "skewness" kan of posititief of negatief zijn dit houdt, een voorbeeld van negatieve skewness (restaurant met ratings), er zijn meer ratings boven het gemiddelde (3/5) dan eronder (0,1,2/5)

## Kurtosis

Dit gaat over hoe veel of weinig uitschieters er zijn en hoe scherp de piek is

The 💡**kurtosis** of a distribution reflects the presence of outliers in the distribution. A distribution with high kurtosis has more outliers than a distribution with lower kurtosis.