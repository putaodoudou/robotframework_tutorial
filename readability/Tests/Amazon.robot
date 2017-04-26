*** Settings ***
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

# robot -d Results --reporttitle "My cool report" --logtitle "My cool log" Tests/Amazon.robot
# robot -d results -i test --loglevel debug Tests/Amazon.robot
# robot -d results -i test --loglevel trace Tests/Amazon.robot

*** Test Cases ***

Should be able to login
    [Tags]  Smoke
    AmazonApp.Login  ${LOGIN_EMAIL}  ${LOGIN_PASSWORD}robot

Logged out user should be able to search for products
    [Tags]  Test
    AmazonApp.Search for Products
    # Added step to test custom library support
    AmazonApp.Do some custom thing

Logged out user should be able to view a product
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results

Logged out user should be able to add a product to cart
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart

Logged out user should be asked to sign in to check out
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout