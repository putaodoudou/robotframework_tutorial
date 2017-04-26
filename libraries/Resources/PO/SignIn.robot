*** Settings ***
Library  Selenium2Library


*** Variables ***
${SIGNIN_MAIN_HEADING} =  xpath=//*[@id="a-page"]/div[1]/div[3]/div/div/form/div/div/div/h1


*** Keywords ***

# Verifications
Verify Signin page is loaded
    wait until page contains element    ${SIGNIN_MAIN_HEADING}
    element text should be              ${SIGNIN_MAIN_HEADING}  Sign in

# Actions

Login With Valid Credentials
    [Arguments]  ${Username}  ${Password}
    Fill "email" field  ${Username}
    Fill "password" field  ${Password}
    Click "sign in" button

Fill "email" field
    [Arguments]  ${Username}
    Log  Fillig email field with ${Username}

Fill "password" field
    [Arguments]  ${Password}
    Log  Filling password field with ${Password}

Click "sign in" button
    Log  Clicking submit button

Sign in user
    input text  id=ap_email  myemail@home.com
    input text  id=ap_password  mystupidpw
    click button  id=signInSubmit


