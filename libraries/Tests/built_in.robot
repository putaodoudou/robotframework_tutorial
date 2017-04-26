*** Settings ***
Library  Selenium2Library
Documentation  Checking out the built-in library

*** Variables ***
${GLOBAL1} =  I am a global variable
${SOME_GLOBAL_DATA}

*** Test Cases ***
Declare and set variable
    ${some_test_data} =  set variable  This is only available within this test
    set test variable  ${more_test_data}  This is also only available within this test

    # available to all tests in the current set suite
    set suite variable  ${some_suite_data}  This is available within all tests in this suite

    # avaiable in al tests in all suites
    set global variable  ${SOME_GLOBAL_DATA}  This is avaiable everywhere

Logging stuff
    [Tags]  BuiltIn
    comment  ${unset_variable}
    comment  Just a random comment
    comment  ${GLOBAL1}
    Log  I have something to say
    log many  Something to say 1   Something to say 2  Something to say 3
    log to console  THis can only be seen in the console, not the log!
    log  ${some_suite_data}
    log  ${GLOBAL1}
    log  ${SOME_GLOBAL_DATA}

Ignore failures in this test
    [Tags]  BuiltIn
    Open Browser  http://amazon.com

    # notice the log will contain a summery of errors which were encountered
    run keyword and continue on failure  Wait until page contains  This text doesn't exist
    run keyword and continue on failure  wait until page contains  More test that doesn't exist

    Log  ${some_suite_data}
    log  ${GLOBAL1}
    log  ${SOME_GLOBAL_DATA}
    close browser

Repeat things
    repeat keyword  3 Times  Say Something Funny
    Log  ${some_suite_data}
    log  ${GLOBAL1}
    log  ${SOME_GLOBAL_DATA}

*** Keywords ***
Say something funny
    log  These pretzels are making me thirsty...