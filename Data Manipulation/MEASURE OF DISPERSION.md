MEASURE OF DISPERSION



It describes the spread or variability of a dataset, it defines how much values in the dataset differ from the central tendency.



&nbsp;

**common measures of dispersion**

range 

variance 

standard deviation

interquartile range 



**Range**

It is the difference **between the max value and the min values** in a dataset.



Range = Maximum Value - Minimum Value



Characteristics

Simple to calculate 

It is sensitive to outliers 

Rough measure of dispersion 







**Variance** 

It measure the avg squared deviation of each values from the mean(how far it is from the mean).

It provides the sense of how much the values in a data set varies.



**Population Variance (σ²)**

This formula is used when you have data for the entire population. 



Formula: **σ² = Σ(xi - μ)² / N** 

Where:

σ²: (sigma squared) is the population variance. 

xi: is each individual data value in the population. 

μ: (mu) is the population mean. 

N: is the total number of values in the population. 





**Sample Variance (s²)**



This formula is used when you have data from a sample and you want to estimate the variance of the entire population. 

Formula: 



**s² = Σ(xi - x̄)² / (n - 1)** 

x`

Where:

s²: is the sample variance.

xi: is each individual data value in the sample. 

x̄: (x-bar) is the sample mean. 

n: is the total number of values in the sample.

&nbsp;

Key Difference

The main difference is the denominator: N for population variance and n-1 for sample variance. The division by (n-1) in the sample variance formula provides 

a more accurate estimate of the population variance, accounting for the fact that a sample is less complete than the entire population. 





**Characteristics**

Provides a precise measure of variability 

units are squared 

more sensitive to outliers then range 





WHY N-1 (bascal correction)



Why n-1 is used for sample variance

Estimating the unknown population mean: When working with a sample, the population mean (μ) is usually unknown. Instead, we use the sample mean (x̄) to estimate the population mean. 

Smaller deviations from the sample mean: The sample mean (x̄) is calculated from the sample data itself, so it tends to be closer to the sample's data points than the actual population mean. This results in the sum of squared deviations (Σ(xi - x̄)²) being smaller than it would be if we used the true population mean. 

Biased estimate: If we were to divide by 'n' (the sample size), the resulting sample variance would consistently underestimate the true variability of the population. 

Bessel's correction: To correct for this underestimation, we divide by (n-1) instead of 'n'. This makes the calculated sample variance a little larger, which helps to provide an unbiased estimate of the population variance. 

Degrees of freedom: The use of (n-1) can also be understood in terms of degrees of freedom. In a sample, once the sample mean is calculated, one of the data points becomes dependent on the others, as the sum of the deviations must equal zero. This loss of one degree of freedom results in the denominator (n-1). 







**Standard Deviation**



It is the square of the variance 



**s = √(Σ(xᵢ - x̄)² / (n-1))**



**Characteristics**



It provides a clear measure of the spread in the same units as data



