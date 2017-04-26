*** Variables ***
${MY_VALUE} =  100

# robot -d conditionals/results conditionals/tests/elseif.robot


*** Test Cases ***
Testing a true IF statement
    run keyword If  ${my_value} > 50  Keyword 1

Testing a false IF statement
    run keyword If  ${my_value} > 200  Keyword 2

Testing IF/ELSE statement
    run keyword If  ${my_value} > 200  Keyword 1
    ...   ELSE  keyword 2

Testing an IF/ELSE IF/ELSE statement
    run keyword IF  ${my_value} > 200  Keyword 1
    ...  ELSE IF  ${my_value} == 10  Keyword 2
    ...  ELSE Keyword 3

*** Keywords ***

Keyword 1
    log  Keyword 1

Keyword 2
    log  Keyword 2

Keyword 3
    log  Keyword 3