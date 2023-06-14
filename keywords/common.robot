*** Settings ***
Library    Browser

*** Variables ***
${BROWSER}             chromium
${HEADLESS}    false
${BROWSER_TIMEOUT}     60 seconds

${URL}  http://localhost:4200/vn/auth/login

${forItemByName}

*** Keywords ***
#### Setup e Teardown
Setup
    Set Browser Timeout         ${BROWSER_TIMEOUT}
    New Browser                 ${BROWSER}  headless=${HEADLESS}
    New Page                    ${URL}
Tear Down
    Close Browser               ALL

Wait Until Element Is Visible
    [Arguments]                 ${locator}    ${message}=${EMPTY}    ${timeout}=${BROWSER_TIMEOUT}
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



Get Element Form Item By Name
    [Arguments]    ${name}  ${xpath}
    [Return]    xpath=//*[contains(@class, 'ant-form-item-label')]/label[text()='${name}']/ancestor::*[contains(@class, 'ant-form-item')]//${xpath}

Enter "${type}" in "${name}" with "${text}"
    ${element}=     Get Element Form Item By Name  ${name}   input
    Fill Text  ${element}    ${text}

Required message "${name}" displayed under "${text}" field
    ${element}=     Get Element Form Item By Name  ${name}   *[contains(@class, 'ant-form-item-explain-error')]
    Element Text Should Be          ${element}     ${text}



Click "${text}" button
    Click   xpath=//button[contains(text(),'${text}')]

User look message "${message}" popup
    Wait Until Element Is Visible   id=swal2-html-container
    Element Text Should Be          id=swal2-html-container     ${message}