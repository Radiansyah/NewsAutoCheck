*** Settings ***
Documentation     Keyword untuk cek format iso

*** Keywords ***
Ambil Waktu Artikel Dan Check Iso
  ${dates}           Get Element Attribute       xpath=//div[contains(@class,"flex flex-col leading-normal md:flex-col")]//time[1]      datetime
  Check Iso 8601     ${dates}
