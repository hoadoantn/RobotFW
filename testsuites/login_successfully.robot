*** Settings ***
Library           SeleniumLibrary
Resource          ../conf/env_conf.resource
Resource          ../resources/users.resource
Resource          ../locators/login_page.resource
Resource          ../common_steps/login.robot

*** Test Cases ***
Login successfully
    Login into application  ${logged_user_name}    ${logged_user_password}
    Element Should Be Visible    ${user_profile_icon_locator}
    [Teardown]    Close browser
