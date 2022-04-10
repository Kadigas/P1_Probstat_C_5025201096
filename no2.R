#2) Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

#a) Peluang terdapat 4 pasien yang sembuh.
size <- 20
prob <- 0.2
n <- 4
db <- dbinom(n, size, prob)
print(db)

#b) Gambarkan grafik histogram berdasarkan kasus tersebut
peluang <- dbinom(1:20, 20, 0.2)
data = data.frame(y=c(peluang), x=c(1:20))
barplot(data$y, names.arg=data$x, ylab="Peluang", xlab="Jumlah Pasien")
#doubt

#c) Nilai Rataan dan Varian dari Distribusi Binomial
mean <- size * prob
var <- size * prob * (1-prob)
print(mean)
print(var)