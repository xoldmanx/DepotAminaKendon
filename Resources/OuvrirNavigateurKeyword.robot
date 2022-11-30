*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py





*** Keywords ***
Ouvrir Navigateur
    [Arguments]    ${url_login}    ${browser}        
    Open Browser    ${url_login}    ${browser}    
    Maximize Browser Window
    Wait Until Element Is Visible    ${btn_login}