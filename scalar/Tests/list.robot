*** Settings ***


*** Variables ***
@{MY_VARIABLE} =  Hello there  This is value 2  I am item 3

*** Test Cases ***
Variable Demonstration
    Log  @{MY_VARIABLE}[0]
    Log  @{MY_VARIABLE}[1]
    Log  @{MY_VARIABLE}[2]

Variable Demonstration 2
    @{my_list_variables} =  create list  Item 1  Item 2  Item 3
    Log  @{my_list_variables}[0]
    Log  @{my_list_variables}[1]
    Log  @{my_list_variables}[2]
