*** Settings ***
Documentation     Gherkin News Article
Resource          ../Libraries/commonFunction.robot
Resource          Steps/Berlangganan.robot
Resource          Steps/Teks.robot
Resource          Steps/Facebook.robot
Resource          Steps/Twitter.robot
Resource          Steps/Whatsapp.robot
Resource          Steps/Artikel.robot
Resource          Steps/FormatIso.robot
Resource          Steps/Center.robot
Resource          Steps/Font.robot
Suite Setup        Start Browser    https://www.kompas.id/baca/opini/2021/01/14/krisis-lingkungan-dan-bencana-pandemi
Suite Teardown     Stop Browser

*** Test Cases ***
Font Yang Digunakan Harus Georgia,Times New Roman,Times,serif
  [Documentation]       Melakukan pengecekan font yang digunakan halaman html terdiri dari
  ...                   Georgia, times new roman, times, serif
  Given Cek HTML Font Family Georgia,Times New Roman,Times,serif

Content Artikel Berada Ditengah
  [Documentation]       Melakukan pengecekan artikel yang harus berada di tengah layar
  Given Scroll Ke Judul
  And Cek Posisi Di Tengah

Tombol Berlangganan Mengarah Ke Url
  [Documentation]       Melakukan pengecekan tombol berlangganan diklik mengarah ke
  ...                   https://gerai.kompas.id/belanja/harian-kompas/kompas-digital-premium
  Given Scroll Ke Tombol Berlangganan
  And Klik Tombol Berlangganan
  And Cek URL Mengarah Ke "https://gerai.kompas.id/belanja/harian-kompas/kompas-digital-premium"
  And Go Back

Tanggal Dan Waktu Menggunakan Format ISO
  [Documentation]       Melakukan pengecekan tanggal dan waktu menggunakan format ISO
  Given Scroll Ke Judul
  And Ambil Waktu Artikel Dan Check Iso

Tombol teks Memunculkan Tampilan List Font Size
  [Documentation]       Melakukan pengecekan tombol text jika di klik menampilkan list font size
  Given Scroll Ke Judul
  And Klik Tombol Text
  And Cek List Font Size Muncul Kecil, Sedang, Besar

Tombol Share Facebook Akan Mengeluarkan Popup Share Facebook
  [Documentation]       Melakukan pengecekan tombol facebook akan keluar popup share facebook
  Given Scroll Ke Judul
  And Klik Tombol Share Facebook
  And Cek Popup Share Facebook Muncul

Tombol Share Twitter Akan Mengeluarkan Popup Share Twitter
  [Documentation]       Melakukan pengecekan tombol twitter akan keluar popup share twitter
  Given Scroll Ke Judul
  And Klik Tombol Share Twitter
  And Cek Popup Share Twitter Muncul

Tombol Share Whatsapp Akan Mengeluarkan Popup Share Whatsapp
  [Documentation]       Melakukan pengecekan tombol whatsapp akan keluar popup share whatsapp
  Given Scroll Ke Judul
  And Klik Tombol Share Whatsapp
  And Cek Popup Share Whatsapp Muncul

Berita Terdiri Dari 5 Buah Artikel Terkait, Terpopuler, Terbaru, Dan Artikel Lainnya
  [Documentation]       Melakukan pengecekan berita terdiri dari 5 buah artikel
  ...                   Terkait, Terpopuler, Terbaru, Dan Artikel Lainnya
  Given Scroll Ke Artikel Terkait
  And Cek Berita Terkait Terdiri Dari 5 Artikel
  And Scroll Ke Artikel Terpopuler
  And Cek Berita Terpopuler Terdiri Dari 5 Artikel
  And Scroll Ke Artikel Terbaru
  And Cek Berita Terbaru Terdiri Dari 5 Artikel
  And Scroll Ke Artikel Lainnya
  And Cek Berita Lainnya Terdiri Dari 5 Artikel




