*** Settings ***
# Add a custom library
Library  ../Libraries/MyCustomLibrary.py

Resource  ./PO/LandingPage.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/SearchResult.robot
Resource  ./PO/Product.robot
Resource  ./PO/Cart.robot
Resource  ./PO/SignIn.robot

*** Keywords ***

# Create a custom keyword, whose implementation is not covered by the existing libary
Do some custom thing
    Do something special

Login
    [Arguments]  ${Username}  ${Password}
    Signin.Login With Valid Credentials  ${Username}  ${Password}

Login with invalid credentials
    SignIn.Fill "email" field  bogus@bogus.com
    SignIn.Fill "password" field  bad password
    SignIn.Click "sign in" button

Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Verify product search box is available
    TopNav.Enter a product name
    TopNav.Click search product button

Select Product from Search Results
    # Assign a local variable to the keyword method in order to assert the return value (here, just logging)
    ${ReturnedInfo} =  SearchResult.Verify search results are displayed
    log  ${ReturnedInfo}
    SearchResult.Select First Result

Add Product to Cart
    Product.Verfiy I am on the product page
    Product.Verify item can be added to cart
    Product.Click Add to Cart button

Begin Checkout
    Cart.Verify product was added to cart
    Cart.Verify checkout button is available
    Cart.Proceed to Checkout
    SignIn.Verify Signin page is loaded
    SignIn.Sign in user