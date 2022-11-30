*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
Fermer Navigateur    
    [Arguments]    ${sleep_timer}     
    Sleep    ${sleep_timer}
    Close Browser














