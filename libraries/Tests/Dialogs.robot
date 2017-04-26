*** Settings ***
Library  Dialogs
Resource  ../Resources/Common.robot    # necessary for Setup and Teardown
Resource  ../Resources/AmazonApp.robot    # necessary for lower level keywords in test cases
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =  lamborghini gallardo
${LOGIN_EMAIL} =  myusername@email.com
${LOGIN_PASSWORD} =  mypassword

*** Test Cases ***

Should be able to login
    [Tags]  Test
    ${new_browser} =  get selection from user  Which browser?  chrome  firefox
    set global variable  ${BROWSER}  ${new_browser}
    AmazonApp.Login  ${LOGIN_EMAIL}  ${LOGIN_PASSWORD}

Logged out user should be able to add a product to cart
    [Tags]  Smoke
    AmazonApp.Search for Products
    execute manual step  Do something manually!  It failed!
    AmazonApp.Select Product from Search Results
    pause execution
    AmazonApp.Add Product to Cart