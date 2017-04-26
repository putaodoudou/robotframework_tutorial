# Hint: use the 'Wait Until Keyword succeeds' to create a finite loop

*** Settings ***
Library  String

# robot -d conditionals/results conditionals/tests/Loops.robot

*** Test Cases ***
FOR Loop with Upper Bounds Range
    [Documentation]  This gives us a 0 based range
    :FOR  ${Index}  IN RANGE  5
    \  Do something  ${Index}
    \  ${RANDOM_STRING} =  generate random string  ${Index}
    \  Log  ${RANDOM_STRING}

FOR Loop with Start and Finish Range
    [Documentation]  No longer a 0 based range because I provided start
    :FOR  ${Index}  IN RANGE  1  4
    \  Do something  ${Index}
    \  ${RANDOM_STRING} =  generate random string  ${Index}
    \  Log  ${RANDOM_STRING}

FOR Loop with Start, Finish and Step Range
    [Documentation]  The counter will jump by 2 each time
    :FOR  ${Index}  IN RANGE  1  10  2
    \  Do something  ${Index}
    \  ${RANDOM_STRING} =  generate random string  ${Index}
    \  Log  ${RANDOM_STRING}

FOR Loop with List
    @{ITEMS} =  create list  Item 1  Item 2  Item 3

    :FOR  ${MyItem}  IN  @{ITEMS}
    \  Log  ${MyItem}

Exit a FOR Loop
    @{ITEMS} =  create list  Item 1  Item 2  Item 3  Item 4

    :FOR  ${MyItem}  IN  @{ITEMS}
    \  Log  ${MyItem}
    \  run keyword If  "${MyItem}" == "Item3"  exit for loop
    \  Log  Didn't exist yet

    Log  Now we are out of the loop

Repeat a keyword many times
    repeat keyword  5  A repeatable keyword
    repeat keyword  2 times  A repeatable keyword
    repeat keyword  2 s  A repeatable keyword  # 10 seconds

*** Keywords ***
Do Something
    [Arguments]  ${PassedIndex}
    Log  I was pased a value of ${PassedIndex}

A repeatable keyword
    log  I was repeated