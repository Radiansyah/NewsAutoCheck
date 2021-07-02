*** Settings ***
Documentation     common function 
Library           SeleniumLibrary
Library           RequestsLibrary
Library           json
Library           Collections
Library           CommonFunction.py

*** Keywords ***
Start Browser
  [Documentation]       open browser by url
  [Arguments]           ${url}
  Open Browser          ${url}    chrome
  Maximize Browser Window

Stop Browser
  [Documentation]       close browser by url
  Close Browser

Wait And Click Element
    [Documentation]      Wait element and click
    [Arguments]          ${element}
    Sleep                         3
    ${is_exist}          Run Keyword And Return Status   Wait Until Element Is Visible   ${element}
    Run Keyword If       ${is_exist}    Click Element     ${element}

Scroll To Element
    [Arguments]  ${locator}
    Wait Until Element Is Visible         ${locator}
    ${x}=        Get Horizontal Position  ${locator}
    ${y}=        Get Vertical Position    ${locator}
    Execute Javascript  window.scrollTo(${x}, ${y})

Get Latest Windows
  @{windows} =  Get Window Handles
  ${numWindows} =  Get Length  ${windows}
  ${indexLast} =  Evaluate  ${numWindows}-1
  Should Be True  ${numWindows} > 1
  Select Window  ${windows}[${indexLast}]

Get Current Windows
  @{windows} =  Get Window Handles
  Select Window  ${windows}[1]

Scroll Ke Judul
  Scroll To Element           xpath=//div[contains(@class,"mx-auto")][h1]
