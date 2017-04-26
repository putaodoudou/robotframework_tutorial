*** Settings ***
Resource  ../Resources/scope.robot

*** Variables ***
${MY_VARIABLE} =  From the script file

*** Test Cases ***
Create and log a variable
    # ${my_variable} =  Set Variable  Some information
    Log  ${MY_VARIABLE}

Access a variable
    Log  ${MY_VARIABLE}


*** Keywords ***
