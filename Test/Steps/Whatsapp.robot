*** Settings ***
Documentation     Keyword untuk tombol whatsapp

*** Keywords ***
Klik Tombol Share Whatsapp
  Wait And Click Element      xpath=//div[contains(@class,"flex justify-end items-center")][1]//a[contains(@href, "whatsapp")]

Cek Popup Share Whatsapp Muncul
  Get Latest Windows
  Location Should Contain  whatsapp.com
  Close Window
  Select Window    MAIN