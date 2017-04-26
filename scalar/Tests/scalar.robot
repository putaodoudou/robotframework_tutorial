*** Settings ***


*** Variables ***
${MY_VARIABLE} =  Hello there!

*** Test Cases ***
Variable Demonstration
    Log  ${MY_VARIABLE}

Set variable in the test case
    [Tags]  Current
    ${my_new_variable} =  set variable  My new variable
    log  ${my__new_variable}

Variable Demonstration 2
    Log  ${MY_VARIABLE}

*** Keywords ***
