*** Settings ***
Documentation     Keyword untuk artikel

*** Keywords ***
Scroll Ke Artikel Terkait
  Scroll To Element           xpath=//span[contains(.,"Artikel Terkait")]

Scroll Ke Artikel Terpopuler
  Scroll To Element           xpath=//span[contains(.,"Terpopuler")]

Scroll Ke Artikel Terbaru
  Scroll To Element           xpath=//span[contains(.,"Terbaru")]

Scroll Ke Artikel Lainnya
  Scroll To Element           xpath=//a[contains(.,"Lainnya dalam Opini")]

Cek Berita Terkait Terdiri Dari 5 Artikel
  ${count}             Get Element Count           xpath=//div[contains(@class,"flex flex-col px-4 w-full lg:w-2/3")][contains(.,"Artikel Terkait")]//div[contains(@class, "flex mb-4")]
  ${count}             Evaluate     ${count} - ${1}
  Should Be True       ${count} == 5

Cek Berita Terpopuler Terdiri Dari 5 Artikel
  ${count}             Get Element Count           xpath=//div[contains(@class,"flex flex-col px-4 w-full lg:w-1/3")][contains(.,"Terpopuler")]//li[contains(@class,"flex items-center mb-2")]
  Should Be True       ${count} == 5

Cek Berita Terbaru Terdiri Dari 5 Artikel
  ${count}             Get Element Count           xpath=//div[contains(@class,"flex flex-col px-4 w-full lg:w-1/3")][contains(.,"Terbaru")]//li[contains(@class,"flex flex-col items-start mb-3")]
  Should Be True       ${count} == 5

Cek Berita Lainnya Terdiri Dari 5 Artikel
  ${count}             Get Element Count           xpath=//div[contains(@class,"flex flex-col px-4 w-full lg:w-2/3")][contains(.,"Lainnya")]//div[contains(@class, "flex mb-4")]
  ${count}             Evaluate     ${count} - ${1}
  Should Be True       ${count} == 5
