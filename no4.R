#4) Diketahui nilai x = 2 dan v = 10. Tentukan:

#a) Fungsi Probabilitas dari Distribusi Chi-Square.
x = 2
v = 10
dchisq(x, v)

#b) Histogram dari Distribusi Chi-Square dengan 100 data random.
random = 100
hist(rchisq(random, v))

#c) Nilai Rataan dan Varian dari Distribusi Chi-Square.
mean = v
var = 2*v
print(mean)
print(var)