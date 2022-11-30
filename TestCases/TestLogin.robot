*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py
Resource    ../Resources/OuvrirNavigateurKeyword.robot
Resource    ../Resources/FermerNavigateurKeyword.robot 
Resource    ../Resources/PageLoginKeywords.robot
Resource    ../Resources/PageAccueilKeywords.robot       
Test Setup    Ouvrir Navigateur    ${url_login}    ${browser}    
Test Teardown    Fermer Navigateur    ${sleep_timer}    


*** Variables ***
${user_valide}    student
${pass_valide}    Password123
${user_invalide}    Incorrect
${pass_invalide}    incorrectPassword 
${url_login}    https://practicetestautomation.com/practice-test-login/
${message_login_succes}    Congratulations student. You successfully logged in!
${partiel_message_login_succes}    Congratulations. successfully logged in!   
${browser}    gc
${partiel_url_accueil}    practicetestautomation.com/logged-in-successfully/
${message_erreur_user}    Your username is invalid!
${message_erreur_pass}    Your password is invalid!
${sleep_timer}    2


*** Test Cases ***
TestPositifLogin
    Saisir Un Username Valide    ${user_valide}
    Saisir Un Password Valide    ${pass_valide}    
    Login     
    Verifier Login Avec Succes    ${partiel_url_accueil}    ${message_login_succes}    ${partiel_message_login_succes}       
       

TestNegatifUserLogin
    Saisir Un Username Invalide    ${user_invalide}
    Saisir Un Password Valide    ${pass_valide} 
    Login 
    Verifier Username Invalide Echoue Login    ${message_erreur_user}


TestNegatifPassLogin
    Saisir Un Username Valide    ${user_valide}
    Saisir Un Password Invalide    ${pass_invalide}    
    Login
    Verifier Password Invalide Echoue Login    ${message_erreur_pass}
    



    
    
    




