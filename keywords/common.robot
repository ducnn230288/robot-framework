*** Settings ***
Library    Browser
Library    FakerLibrary

*** Variables ***
${BROWSER}             chromium
${HEADLESS}    false
${BROWSER_TIMEOUT}     60 seconds

${URL}  http://localhost:4200/vn/auth/login
${STATE}       Evaluate  json.loads('''{}''')  json

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


###  -----  Form  -----  ###
Get Random Text
    [Arguments]    ${type}      ${text}
    IF  '${text}' == '_RANDOM_' and '${type}' == 'test name'
        ${random}=  FakerLibrary.Sentence       nb_words=3
        ${text}     Set Variable    ${TEST NAME} ${random}
    ELSE IF  '${text}' == '_RANDOM_' and '${type}' == 'paragraph'
        ${text}=    FakerLibrary.Paragraph
    ELSE IF  '${text}' == '_RANDOM_' and '${type}' == 'number'
        ${text}=    FakerLibrary.Random Int
    ELSE IF  '${text}' == '_RANDOM_' and '${type}' == 'percentage'
        ${text}=    FakerLibrary.Random Int    max=100
    ELSE IF  '${text}' == '_RANDOM_' and '${type}' == 'email'
        ${text}=    FakerLibrary.Email
    ELSE IF  '${text}' == '_RANDOM_' and '${type}' == 'phone'
        ${text}=    FakerLibrary.Random Int    min=55555555    max=999999999999
    ELSE IF  '${text}' == '_RANDOM_' and '${type}' == 'color'
        ${text}=    FakerLibrary.Safe Hex Color
    ELSE IF  '${text}' == '_RANDOM_' and '${type}' == 'date'
        ${text}=    FakerLibrary.Date  	pattern=%d-%m-%Y
    ELSE IF  '${text}' == '_RANDOM_'
        ${text}=    FakerLibrary.Sentence
    END
    [Return]    ${text}
Get Element Form Item By Name
    [Arguments]    ${name}      ${xpath}
    [Return]    xpath=//*[contains(@class, "ant-form-item-label")]/label[text()="${name}"]/ancestor::*[contains(@class, "ant-form-item")]//${xpath}

Required message "${name}" displayed under "${text}" field
    ${element}=     Get Element Form Item By Name   ${name}     *[contains(@class, "ant-form-item-explain-error")]
    Element Text Should Be                          ${element}  ${text}
Enter "${type}" in "${name}" with "${text}"
    ${text}=        Get Random Text                 ${type}     ${text}
    ${element}=     Get Element Form Item By Name   ${name}     input
    Fill Text                                       ${element}  ${text}
    Set Global Variable                             ${STATE["${name}"]}    ${text}
Enter "${type}" in textarea "${name}" with "${text}"
    ${text}=        Get Random Text                 ${type}     ${text}
    ${element}=     Get Element Form Item By Name   ${name}     textarea
    Fill Text                                       ${element}  ${text}
    Set Global Variable                             ${STATE["${name}"]}    ${text}


Click "${text}" button
    Click   xpath=//button[@title = "${text}"]
#    clickSubmitPopover
Click "${text}" menu
    Click   xpath=//li[contains(@class, "menu") and descendant::span[contains(text(), "${text}")]]
Click "${text}" sub menu to "${url}"
    Click   xpath=//a[contains(@class, "sub-menu") and descendant::span[contains(text(), "${text}")]]
#   cy.url().should('include', url);
User look message "${message}" popup
#   verifyMessageSwal2
    Element Text Should Be          id=swal2-html-container     ${message}

###  -----  Table  -----  ###
Get Element Table Item By Name
    [Arguments]    ${name}      ${xpath}
    [Return]    xpath=//*[contains(@class, "item-text") and contains(text(), "${name}")]/ancestor::*[contains(@class, "item")]//${xpath}
Click on the "${text}" button in the "${name}" item line
    ${element}=     Get Element Table Item By Name  ${STATE["${name}"]}     button[@title = "${text}"]
    Click   ${element}
#    clickSubmitPopover
    Click   xpath=//*[contains(@class, "ant-popover")]//*[contains(@class, "ant-btn-primary")]