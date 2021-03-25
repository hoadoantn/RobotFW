*** Settings ***
Library           SeleniumLibrary
Resource          ../conf/env_conf.resource
Resource          ../resources/users.resource
Resource          ../locators/login_page.resource

*** Keywords ***
Login into application
    [Arguments]   ${username}       ${password}
    Open browser    ${url}    ${browser}
    Click Link    Login
    Input Text    ${username_locator}    ${username}
    Input Text    ${user_password_locator}   ${password}
    Click Button  ${login_button_locator}



