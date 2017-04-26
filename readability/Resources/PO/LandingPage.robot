*** Settings ***
Library  Selenium2Library

*** Keywords ***

# Verifications
Verify Page Loaded
   wait until page contains  Your Amazon.com

# Actions
Load
#    go to  http://www.amazon.com
    go to  ${START_URL}



