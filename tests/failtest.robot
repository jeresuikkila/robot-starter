*** Settings ***
Library           SeleniumLibrary
Suite Teardown    Close All Browsers

*** Test Cases ***
Open Google
	Open Browser	https://www.bing.com	Chrome
	Title Should Be		Google
