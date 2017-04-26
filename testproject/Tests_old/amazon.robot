*** Settings ***
Documentation  This is some basic info about the whole suite
Library  Selenium2Library

*** Variables ***




*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic information about the test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  chrome
    wait until page contains  Your Amazon.com
    input text  id=twotabsearchtextbox  Ferrari 458
    click button  xpath=/html/body/div[1]/header/div/div[1]/div[3]/div/form/div[2]/div/input
    wait until page contains  "Ferrari 458"
    click link  css=#result_0 a.s-access-detail-page
    wait until page contains  Back to search results for "Ferrari 458"
    click button  id=add-to-cart-button
    wait until page contains  Added to Cart

    click link  Proceed to checkout (1 item)
    wait until page contains  signIn

    Close Browser

*** Keywords ***
