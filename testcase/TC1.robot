*** Settings ***
Library  Browser
Suite Setup    New Browser    browser=${browser}    headless=${HEADLESS}
Test Setup    New Context
Test Teardown    Close Context
Suite Teardown    Close Browser

*** Variables ***
${browser}  chromium
${url}  http://localhost:4200/vn/auth/login
${HEADLESS}    True

*** Test Cases ***
SI-01 Verify that login successfully with valid Email and Password
    befor
    Fill Text  id=username    admin@gmail.com
    Fill Text  id=password     123123
    submit

SI-02 Verify that Login unsuccessfully with invalid Email
    befor
    Fill Text  id=username    adminnn@gmail.com
    Fill Text  id=password     123123
    submit

SI-03 Verify that Login unsuccessfully with invalid Password
    befor
    Fill Text  id=username    admin@gmail.com
    Fill Text  id=password     12341234
    submit

SI-04 Verify that Login unsuccessfully because no enter Email and Password
    befor
    submit

SI-05 Verify that Login unsuccessfully because no enter Email
    befor
    Fill Text  id=password     123123
    submit

SI-06 Verify that Login unsuccessfully because no enter Password
    befor
    Fill Text  id=username    admin@gmail.com
    submit
*** Keywords ***
befor
    New Page    ${url}
submit
    Click   id=button-submit
    close browser