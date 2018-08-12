*** Settings ***
Library           SeleniumLibrary
Suite Teardown    Close All Browsers

*** Test Cases ***
Open Google
   Open Browser   https://www.google.com   Firefox
