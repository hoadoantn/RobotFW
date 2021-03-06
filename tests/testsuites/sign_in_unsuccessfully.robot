*** Settings ***
Library             SeleniumLibrary
Resource            ../testdata/users.resource
Resource            ../../common/sign_in.resource
Test Template       Sign In unsuccessfully


*** Test Cases ***              Username                Password                            Expected Message
Invalid Username                hoadoan@gmail.com       ${logged_user_password}             Invalid email or password.
Invalid Password                ${logged_user_name}     12345                               Invalid email or password.
Invalid Username and Password   hoadoan@gmail.com       12345                               Invalid email or password.
Empty Username                  ${EMPTY}                ${logged_user_password}             You need to sign in or sign up before continuing.
Empty Password                  ${logged_user_name}     ${EMPTY}                            Invalid email or password.
Empty Username And Password      ${EMPTY}         ${EMPTY}                                  You need to sign in or sign up before continuing.


*** Keywords ***
Sign In unsuccessfully
    [Arguments]     ${username}    ${password}      ${expected_mesasge}
    Sign In   ${username}    ${password}
    Page Should Contain    ${expected_mesasge}
    [Teardown]    Close browser
