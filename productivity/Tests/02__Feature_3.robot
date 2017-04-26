*** Settings ***
Library  OperatingSystem

*** Variables ***


# robot -d results --reporttitle "My Cool Report" --logtitle "My Cool Log" tests


*** Test Cases ***
Feature 1 Test 1
    [Tags]  foo
    log  This is test 1 of feature 3

Feature 1 Test 2
    [Tags]  bar
    log  This is test 2 of feature 3
    # directory should exist  c:\\fake\\