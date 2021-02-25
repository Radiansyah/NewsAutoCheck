*** Settings ***
Documentation     Keyword untuk font

*** Keywords ***
Cek HTML Font Family Georgia,Times New Roman,Times,serif
  ${html_font}          Get CSS Attribute Value      locator=//p[contains(@class,'font-georgia text-center leading-loose js-excerpt')]         attribute=font-family
  Should Be Equal       ${html_font}          	     Georgia, "Times New Roman", Times, serif

Get CSS Attribute Value
    [Arguments]    ${locator}    ${attribute}
    # Get element using Xpath in JavaScript.
    # Note there are other options like getElementById/Class/Tag
    ${element}=    Set Variable    document.evaluate("${locator}", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue
    # Get css attribute value using getComputedStyle()
    ${attribute_value}=    Execute Javascript    return window.getComputedStyle(${element},null).getPropertyValue('${attribute}');
    [Return]    ${attribute_value}
