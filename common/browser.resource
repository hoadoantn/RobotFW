*** Settings ***
Library           SeleniumLibrary
Resource          ../conf/env_conf.resource
Resource          ../tests/testdata/users.resource
Resource          ../pageobjects/login_page_locators.resource


#============ Public keywords ===================
*** Keywords ***
Launch Browser
    [Arguments]     ${expected_browser}
    Open Browser    ${base_urll}  ${expected_browser}
Navigate to Url
    [Arguments]     ${expected_url}
    Go To    ${expected_url}
