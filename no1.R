#1) Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan
#seseorang yang menghadiri acara vaksinasi sebelumnya.

#a) Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi
#sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?
#(distribusi Geometrik)

n <- 3
p <- 0.20
q <- 0.80

#distribusi geometrik = g(3, 0.2)
dg <- dgeom(n, p)
print(dg)

#b) mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
#geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
mean(rgeom(10000, p) == 3)

#c) Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
print("Hasil dari perhitungan a dan b tidak terlalu jauh. Yang membedakan adalah a bernilai tetap
sedangkan b bernilai random, besar kecil nilainya ditentukan oleh X")


#d) Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
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


#e) Nilai Rataan dan Varian dari Distribusi Geometrik
mean <- 1 / p
var <- (1 - p) / p
print(mean)
print(var)
