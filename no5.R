#5) Diketahui bilangan acak (random variable) berdistribusi exponential (lambda = 3). Tentukan

#a) Fungsi Probabilitas dari Distribusi Exponensial
lambda = 3
dexp(lambda)

#b) Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
set.seed(1)
hist(rexp(10))
set.seed(1)
hist(rexp(100))
set.seed(1)
hist(rexp(1000))
set.seed(1)
hist(rexp(10000))

#c) Nilai Rataan dan Varian dari Distribusi Exponensial untuk n = 100 dan lambda = 3
mean = lambda
var = lambda*lambda
print(mean)
print(var)