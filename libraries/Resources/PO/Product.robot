*** Settings ***
Library  Selenium2Library

*** Keywords ***

# Verifcations
Verfiy I am on the product page
    wait until page contains  Back to search results for

Verify item can be added to cart
    wait until page contains element  id=add-to-cart-button

Verify single item can be checked out
    wait until page contains element  name=Proceed to checkout (1 item)

# Actions
Click Add to Cart button
    click button  id=add-to-cart-button


