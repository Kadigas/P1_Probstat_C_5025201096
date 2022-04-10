# P1_Probstat_C_5025201096

Nama: Andhika Ditya Bagaskara D.

NRP: 5025201096

## No. 1
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

a) Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik) </li>
  ``` R
  n <- 3
  p <- 0.20
  q <- 0.80
  
  dg <- dgeom(n, p)
  print(dg)
  ```
  <img src="/screenshots/1a.png">
  
b) mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 ) </li>
  ``` R
  mean(rgeom(10000, p) == 3)
  ```
  <img src="/screenshots/1b.png">
  
c) Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
 ``` R
 print("Hasil dari perhitungan a dan b tidak terlalu jauh. Yang membedakan adalah a bernilai tetap sedangkan b bernilai random, besar kecil nilainya ditentukan oleh X")
 ```
d) Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
``` R
data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>%
  mutate(Failures = ifelse(x == n, n, "other")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Peluang x = 3 gagal Sebelum Sukses Pertama",
       subtitle = "Distribusi Geometrik (0.2)",
       x = "Kegagalan sebelum sukses pertama (x)",
       y = "Probabilitas")
```
<img src="/screenshots/hist1.png">

e) Nilai Rataan dan Varian dari Distribusi Geometrik

``` R
mean <- 1 / p
var <- (1 - p) / p
print(mean)
print(var)
```
<img src="/screenshots/1e.png">

## No. 2
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

a) Peluang terdapat 4 pasien yang sembuh.
``` R
size <- 20
prob <- 0.2
n <- 4
db <- dbinom(n, size, prob)
print(db)
```
<img src="/screenshots/2a.png">

b) Gambarkan grafik histogram berdasarkan kasus tersebut
``` R
peluang <- dbinom(1:20, 20, 0.2)
data = data.frame(y=c(peluang), x=c(1:20))
barplot(data$y, names.arg=data$x, ylab="Peluang", xlab="Jumlah Pasien")
```
<img src="/screenshots/hist2.png">

c) Nilai Rataan dan Varian dari Distribusi Binomial
```R
mean <- size * prob
var <- size * prob * (1-prob)
print(mean)
print(var)
```
<img src="/screenshots/2c.png">

## No. 3
Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

a) Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
``` R
lambda <- 4.5
n <- 6
dpois(n, lambda)
```
<img src="/screenshots/3a.png">

b) simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)
``` R
success <- 0:365

plot(success, rpois(success, n),
     type='h',
     main='Poisson Distribution(6)',
     ylab='Jumlah Kelahiran',
     xlab ='Hari',
     lwd=3)
```
<img src="/screenshots/hist3.png">

#c) dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan?

#d) Nilai Rataan dan Varian dari Distribusi Poisson
``` R
mean <- lambda
var <- lambda
print(mean)
print(var)
```
<img src="/screenshots/3d.png">

## No. 4
Diketahui nilai x = 2 dan v = 10. Tentukan:

a) Fungsi Probabilitas dari Distribusi Chi-Square.
``` R
x <- 2
v <- 10
dchisq(x, v)
```
<img src="/screenshots/4a.png">

b) Histogram dari Distribusi Chi-Square dengan 100 data random.
``` R
random <- 100
hist(rchisq(random, v))
```
<img src="/screenshots/hist4.png">

c) Nilai Rataan dan Varian dari Distribusi Chi-Square.
``` R
mean <- v
var <- 2*v
print(mean)
print(var)
```
<img src="/screenshots/4c.png">

## No. 5
Diketahui bilangan acak (random variable) berdistribusi exponential (lambda = 3). Tentukan

a) Fungsi Probabilitas dari Distribusi Exponensial
``` R
lambda <- 3
dexp(lambda)
```
<img src="/screenshots/5a.png">

b) Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
``` R
set.seed(1)
hist(rexp(10))
```
<img src="/screenshots/hist51.png">

``` R
set.seed(1)
hist(rexp(100))
```
<img src="/screenshots/hist52.png">

``` R
set.seed(1)
hist(rexp(1000))
```
<img src="/screenshots/hist53.png">

``` R
set.seed(1)
hist(rexp(10000))
```
<img src="/screenshots/hist54.png">

c) Nilai Rataan dan Varian dari Distribusi Exponensial untuk n = 100 dan lambda = 3
``` R
mean <- lambda
var <- lambda * lambda
print(mean)
print(var)
```
<img src="/screenshots/5c.png">

## No. 6
Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

a) Fungsi Probabilitas dari Distribusi Normal P(X1 <= x <= X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).

Keterangan :
X1 = Dibawah rata-rata
X2 = Diatas rata-rata

``` R
n <- 100
m <- 50
sd <- 8

data <- rnorm(n=n, mean=m, sd=sd)
z_array = c()
x1 <- 0
x2 <- 0

for (d in data)
{
  z = (d - m)/sd
  z_array = append(z_array, z)
  
  if (d < m)
    x1 = x1 + 1
  
  else
    x2 = x2 + 1
}

plot(z_array, type='l')

paste("Mean = ", m)
paste("x1 = ", x1)
paste("x2 = ", x2)
```
<img src="/screenshots/hist61.png">
<img src="/screenshots/6a.png">

b) Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
``` R
h = hist(rnorm(n, m, sd), breaks = 50, main="5025201096_Andhika Ditya Bagaskara D_Probstat_C_DNhistogram")
```
<img src="/screenshots/hist62.png">

c) Nilai Varian dari hasil generate random nilai Distribusi Normal.
``` R
var = sd * sd
print(var)
```
<img src="/screenshots/6c.png">

