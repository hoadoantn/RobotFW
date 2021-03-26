*** Settings ***
Documentation   Login Feature
Library         SeleniumLibrary
Resource        ../../conf/env_conf.resource
Resource        ../testdata/users.resource
Resource        ../../pageobjects/login_page_locators.resource
Resource        ../../common/sign_in.resource


*** Test Cases ***
Login successfully
    Sign In  ${logged_user_name}    ${logged_user_password}
    Element Should Be Visible    ${user_profile_icon_locator}
    [Teardown]    Close browser
