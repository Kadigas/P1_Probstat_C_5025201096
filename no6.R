#6) Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

#a) Fungsi Probabilitas dari Distribusi Normal P(X1 <= x <= X2), hitung Z-Score Nya dan plot
#data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
#Keterangan :
#X1 = Dibawah rata-rata
#X2 = Diatas rata-rata

n = 100
m = 50
sd = 8

data = rnorm(n=n, mean=m, sd=sd)
z_array = c()
x1 = 0
x2 = 0

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

#b) Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan:
#NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
h <- hist(rnorm(n, m, sd), breaks = 50, main="5025201096_Andhika Ditya Bagaskara D_Probstat_C_DNhistogram")

#c) Nilai Varian dari hasil generate random nilai Distribusi Normal.
var <- sd * sd
print(var)