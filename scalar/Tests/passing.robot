*** Settings ***
Library  Selenium2Library

*** Variables ***


*** Test Cases ***
User can search for products
    @{url_and_browser} =  create list  http://www.google.com  firefox
    # Begin Web Test  http://www.google.com  firefox
    Begin Web Test  @{url_and_browser}

*** Keywords ***
#Begin Web Test
#    [Arguments]  ${url}  ${browser}
#    Open Browser  ${url}  ${browser}
#    Close Browser

Begin Web Test
    [Arguments]  @{url_and_browser}
    Open Browser  @{url_and_browser}[0]  @{url_and_browser}[1]
    Close Browser

