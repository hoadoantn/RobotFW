*** Settings ***
Library           SeleniumLibrary
Resource          ../conf/env_conf.resource
Resource          ./browser.resource
Resource          ../tests/testdata/users.resource
Resource          ../pageobjects/login_page_locators.resource


#============ Public keywords ===================
*** Keywords ***
Sign In
    [Arguments]     ${username}     ${password}
    Launch Browser  ${browser}
    Navigate to Url    ${login_url}
    Input Username      ${username}
    Input Password      ${password}
    Click SignIn Button

# ============ Private keywords ===================
Input Username
    [Arguments]     ${username}
    Input Text    ${username_locator}       ${username}
Input Password
    [Arguments]     ${password}
    Input Text    ${user_password_locator}  ${password}
Click SignIn Button
    Click Button        ${login_button_locator}

