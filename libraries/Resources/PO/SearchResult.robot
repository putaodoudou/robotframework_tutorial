*** Settings ***
Library  Selenium2Library

*** Keywords ***

# Verifications
Verify search results are displayed
    wait until page contains  Show results for

# Actions
Select First Result
    click link  xpath=//*[@id="result_0"]/div/div/div/div[2]/div[2]/div[1]/a