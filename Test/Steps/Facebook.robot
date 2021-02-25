*** Settings ***
Documentation     Keyword untuk tombol fb

*** Keywords ***
Klik Tombol Share Facebook
  Wait And Click Element      xpath=//div[contains(@class,"flex justify-end items-center")][1]//a[contains(@href, "facebook")]

Cek Popup Share Facebook Muncul
  Get Latest Windows
  Location Should Contain  facebook.com
  Close Window
  Select Window     MAIN
