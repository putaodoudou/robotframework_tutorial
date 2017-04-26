*** Settings ***
Library  Selenium2Library

*** Keywords ***

# Verifications
Verify search results are displayed
    wait until page contains  Show results for
    # add a return value to return to the calling keyword method
    [Return]  Found it!

# Actions
Select First Result
    click link  xpath=//*[@id="result_0"]/div/div/div/div[2]/div[2]/div[1]/a