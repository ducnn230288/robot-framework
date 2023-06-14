*** Settings ***
Library    Browser

*** Variables ***
${BROWSER}             chromium
${TIMEOUT}             15
${browser_timeout}     60 seconds
*** Keywords ***
#### Setup e Teardown
Setup
    Set Browser Timeout              ${TIMEOUT}
    Open Browser                     about:blank   ${BROWSER}

Tear Down
    Close Browser

Wait Until Element Is Visible
    [Arguments]                 ${locator}    ${message}=${EMPTY}    ${timeout}=${browser_timeout}
    Wait For Elements State     ${locator}    visible    ${timeout}    ${message}

Element Should Be Visible
    [Arguments]                 ${locator}    ${message}=${EMPTY}    ${timeout}=0:00:05
    Wait For Elements State     ${locator}    visible    ${timeout}    ${message}

Element Text Should Be
    [Arguments]                 ${locator}    ${expected}    ${message}=${EMPTY}    ${ignore_case}=${EMPTY}
    Get Text                    ${locator}    equal    ${expected}    ${message}

Element Should Not Be Visible
    [Arguments]                 ${locator}    ${message}=${EMPTY}    ${timeout}=0:00:05
    Wait For Elements State     ${locator}    hidden    ${timeout}    ${message}