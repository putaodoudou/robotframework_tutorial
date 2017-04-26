*** Settings ***
Library  Selenium2Library

*** Keywords ***

# Verifications
Verify product was added to cart
    wait until page contains  Added to Cart

Verify checkout button is available
    wait until page contains element  css=#hlb-ptc-btn

# Actions
Proceed to Checkout
    click element  css=#hlb-ptc-btn