*** Settings ***
Library  Selenium2Library

*** Variables ***



*** Test Cases ***
Should be able to search for product
    open browser  http://www.amazon.com  firefox
    sleep  3s
#    input text  id=twotabsearchtextbox  Ferrari
#    sleep  3s
#    click button  xpath=/html/body/div[1]/header/div/div[1]/div[3]/div/form/div[2]/div/input
#    sleep  3s
#    click link  xpath=//*[@id="result_1"]/div/div/div/div[2]/div[2]/div[1]/a
#    sleep  3s
    click image  Kindle

*** Keywords ***
