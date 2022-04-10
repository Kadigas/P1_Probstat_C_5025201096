#3) Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis
# 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

#a) Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
lambda = 4.5
n = 6
dpois(n, lambda)

#b) simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama
# setahun (n = 365)
success <- 0:365

plot(success, rpois(success, n),
     type='h',
     main='Poisson Distribution(6)',
     ylab='Jumlah Kelahiran',
     xlab ='Hari',
     lwd=3)

#c) dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan?

#d) Nilai Rataan dan Varian dari Distribusi Poisson
mean = lambda
var = lambda
print(mean)
print(var)