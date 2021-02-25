*** Settings ***
Documentation     Keyword untuk berlangganan

*** Keywords ***
Scroll Ke Tombol Berlangganan
  Scroll To Element           xpath=//div[contains(@class,"lg:order-none")][2]//div[contains(@class,"mb-6")]

Klik Tombol Berlangganan
  Wait And Click Element      xpath=//div[contains(@class,"lg:order-none")][2]//a[contains(.,"BERLANGGANAN")]

Cek URL Mengarah Ke "${URL}"
  ${location}                 Get Location
  Should Contain              ${location}            ${URL}