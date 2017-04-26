*** Settings ***
Library  Selenium2Library

*** Variables ***
${TOPNAV_SEARCH_BAR}=       id=twotabsearchtextbox
${TOPNAV_SEARCH_BUTTON}=    xpath=//*[@id="nav-search"]/form/div[2]/div/input

*** Keywords ***

# Verifications
Verify product search box is available
    wait until page contains element  id=twotabsearchtextbox

# Actions
Enter a product name
    input text  ${TOPNAV_SEARCH_BAR}  ${SEARCH_TERM}

Click search product button
    click button  ${TOPNAV_SEARCH_BUTTON}

