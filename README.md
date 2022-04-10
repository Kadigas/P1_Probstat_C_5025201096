# P1_Probstat_C_5025201096

Nama: Andhika Ditya Bagaskara D.
NRP: 5025201096

## No. 1
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.
<ul>
  <li> a) Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik) </li>
  ```bash
  n <- 3
  p <- 0.20
  q <- 0.80
  
  dg <- dgeom(n, p)
  print(dg)
  ```
  <li> b) mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 ) </li>
  ```bash
  mean(rgeom(10000, p) == 3)
  ```
</ul>
