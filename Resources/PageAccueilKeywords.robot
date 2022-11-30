*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py


*** Keywords ***
Verifier Login Avec Succes
    [Arguments]    ${partiel_url_accueil}    ${message_login_succes}    ${partiel_message_login_succes}    
    Wait Until Element Is Visible    ${btn_logout}
    Page Should Contain Element    ${btn_logout}
    ${url_accueil}    Get Location
    Should Contain    ${url_accueil}    ${partiel_url_accueil}
    Page Should Contain    ${message_login_succes}    ${partiel_message_login_succes}