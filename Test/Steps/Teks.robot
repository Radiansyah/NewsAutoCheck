*** Settings ***
Documentation     Keyword untuk Teks

*** Keywords ***
Klik Tombol Text
  Mouse Over                  xpath=//div[contains(@class, "px-4 lg:px-0")]//p[contains(.,"TEKS")]
  Wait And Click Element      xpath=//div[contains(@class, "px-4 lg:px-0")]//p[contains(.,"TEKS")]

Cek List Font Size Muncul Kecil, Sedang, Besar
  Wait Until Element Is Visible       xpath=//div[contains(@class, "px-4 lg:px-0")]//p[contains(.,"Kecil")]
  Wait Until Element Is Visible       xpath=//div[contains(@class, "px-4 lg:px-0")]//p[contains(.,"Sedang")]
  Wait Until Element Is Visible       xpath=//div[contains(@class, "px-4 lg:px-0")]//p[contains(.,"Besar")]
  Element Should Be Visible           xpath=//div[contains(@class, "px-4 lg:px-0")]//p[contains(.,"Kecil")]
  Element Should Be Visible           xpath=//div[contains(@class, "px-4 lg:px-0")]//p[contains(.,"Sedang")]
  Element Should Be Visible           xpath=//div[contains(@class, "px-4 lg:px-0")]//p[contains(.,"Besar")]

