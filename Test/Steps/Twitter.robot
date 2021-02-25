*** Settings ***
Documentation     Keyword untuk tombol twitter

*** Keywords ***
Klik Tombol Share Twitter
  Wait And Click Element      xpath=//div[contains(@class,"flex justify-end items-center")][1]//a[contains(@href, "twitter")]

Cek Popup Share Twitter Muncul
  Get Latest Windows
  Location Should Contain  twitter.com
  Close Window
  Select Window    MAIN