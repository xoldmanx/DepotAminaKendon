*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
Saisir Un Username Valide
    [Arguments]    ${user_valide}
    Input Text    ${txt_user}    ${user_valide}

Saisir Un Username Invalide
    [Arguments]    ${user_invalide}
    Input Text    ${txt_user}    ${user_invalide}

Saisir Un Password Valide
    [Arguments]    ${pass_valide}
    Input Password    ${txt_pass}    ${pass_valide}

Saisir Un Password Invalide
    [Arguments]    ${pass_invalide}
    Input Password    ${txt_pass}    ${pass_invalide}

Login
    Click Button    ${btn_login}

Verifier Username Invalide Echoue Login
    [Arguments]    ${message_erreur_user}
    Wait Until Element Is Visible    ${alerte_invalide}
    Page Should Contain Element    ${alerte_invalide}
    Element Text Should Be    ${alerte_invalide}    ${message_erreur_user}

Verifier Password Invalide Echoue Login
    [Arguments]    ${message_erreur_pass}
    Wait Until Element Is Visible    ${alerte_invalide}
    Page Should Contain Element    ${alerte_invalide}
    Element Text Should Be    ${alerte_invalide}    ${message_erreur_pass}
