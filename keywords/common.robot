*** Settings ***
Library             Browser
Library             FakerLibrary
Library             String

*** Variables ***
${BROWSER}          chromium
${HEADLESS}         false
${BROWSER_TIMEOUT}  50 seconds
${SHOULD_TIMEOUT}   0.1 seconds

${URL_DEFAULT}      http://localhost:4200/vn
${STATE}            Evaluate  json.loads('''{}''')  json

*** Keywords ***
Login to admin
    Enter "text" in "Email" with "admin@gmail.com"
    Enter "text" in "Mật khẩu" with "123123"
    Click "Đăng nhập" button
    User look message "Success" popup


#### Setup e Teardown
Setup
    Set Browser Timeout         ${BROWSER_TIMEOUT}
    New Browser                 ${BROWSER}  headless=${HEADLESS}
    New Page                    ${URL_DEFAULT}
    ${STATE}                    Evaluate  json.loads('''{}''')  json
Tear Down
    Close Browser               ALL

Wait Until Element Is Visible
    [Arguments]                 ${locator}    ${message}=${EMPTY}    ${timeout}=${BROWSER_TIMEOUT}
    Wait For Elements State     ${locator}    visible    ${timeout}    ${message}

Wait Until Element Is Not Exist
    [Arguments]                 ${locator}    ${message}=${EMPTY}    ${timeout}=${BROWSER_TIMEOUT}
    Wait For Elements State     ${locator}    detached    ${timeout}    ${message}

Element Should Be Exist
    [Arguments]                 ${locator}    ${message}=${EMPTY}    ${timeout}=${SHOULD_TIMEOUT}
    Wait For Elements State     ${locator}    attached    ${timeout}    ${message}

Element Should Be Visible
    [Arguments]                 ${locator}    ${message}=${EMPTY}    ${timeout}=${SHOULD_TIMEOUT}
    Wait For Elements State     ${locator}    visible    ${timeout}    ${message}

Element Text Should Be
    [Arguments]                 ${locator}    ${expected}    ${message}=${EMPTY}    ${ignore_case}=${EMPTY}
    Get Text                    ${locator}    equal    ${expected}    ${message}

Element Should Not Be Visible
    [Arguments]                 ${locator}    ${message}=${EMPTY}    ${timeout}=${SHOULD_TIMEOUT}
    Wait For Elements State     ${locator}    hidden    ${timeout}    ${message}


###  -----  Form  -----  ###
Get Random Text
    [Arguments]         ${type}                     ${text}
    ${symbol}           Set Variable                _RANDOM_
    ${new_text}         Set Variable
    ${containsS}=       Get Regexp Matches          ${text}       _@(.+)@_           1
    ${cntS}=            Get length                  ${containsS}

    ${contains}=        Get Regexp Matches          ${text}       ${symbol}
    ${cnt}=             Get length                  ${contains}
    IF  ${cntS} > 0
        ${new_text}=    Set Variable                ${STATE["${containsS[0]}"]}
        ${symbol}=      Set Variable                _@${containsS[0]}@_
        Log    ${new_text} ${symbol}
    ELSE IF  ${cnt} > 0 and '${type}' == 'test name'
        ${random}=      FakerLibrary.Sentence       nb_words=3
        ${words}=       Split String                ${TEST NAME}    ${SPACE}
        ${new_text}=    Set Variable                ${words[0]} ${random}
    ELSE IF  ${cnt} > 0 and '${type}' == 'number'
        ${new_text}=    FakerLibrary.Random Int
    ELSE IF  ${cnt} > 0 and '${type}' == 'percentage'
        ${new_text}=    FakerLibrary.Random Int     max=100
    ELSE IF  ${cnt} > 0 and '${type}' == 'paragraph'
        ${new_text}=    FakerLibrary.Paragraph
    ELSE IF  ${cnt} > 0 and '${type}' == 'email'
        ${new_text}=    FakerLibrary.Email
    ELSE IF  ${cnt} > 0 and '${type}' == 'phone'
        ${new_text}=    FakerLibrary.Random Int     min=55555555    max=999999999999
    ELSE IF  ${cnt} > 0 and '${type}' == 'color'
        ${new_text}=    FakerLibrary.Safe Hex Color
    ELSE IF  ${cnt} > 0 and '${type}' == 'date'
        ${new_text}=    FakerLibrary.Date  	        pattern=%d-%m-%Y
    ELSE IF  ${cnt} > 0 and '${type}' == 'word'
        ${new_text}=    FakerLibrary.Sentence       nb_words=2
    ELSE IF  ${cnt} > 0
        ${new_text}=    FakerLibrary.Sentence
    END

    ${cnt}=             Get Length                  ${text}
    Log    ${cnt} ${text}
    IF  ${cnt} > 0
        ${text}=        Replace String              ${text}         ${symbol}     ${new_text}
        Log    ${text}
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
    Clear Text                                      ${element}
    Fill Text                                       ${element}  ${text}
    Set Global Variable                             ${STATE["${name}"]}    ${text}
Enter "${type}" in textarea "${name}" with "${text}"
    ${text}=        Get Random Text                 ${type}     ${text}
    ${element}=     Get Element Form Item By Name   ${name}     textarea
    Clear Text                                      ${element}
    Fill Text                                       ${element}  ${text}
    Set Global Variable                             ${STATE["${name}"]}    ${text}

###  -----  Table  -----  ###
Get Element Table Item By Name
    [Arguments]     ${name}     ${xpath}
    [Return]        xpath=//*[contains(@class, "item-text") and contains(text(), "${name}")]/ancestor::*[contains(@class, "item")]//${xpath}
Click on the "${text}" button in the "${name}" item line
    Wait Until Element Spin
    ${element}=     Get Element Table Item By Name  ${STATE["${name}"]}     button[@title = "${text}"]
    Click           ${element}
    Click Confirm To Action


Click "${text}" button
    Click   xpath=//button[@title = "${text}"]
    Click Confirm To Action
Click "${text}" menu
    Click   xpath=//li[contains(@class, "menu") and descendant::span[contains(text(), "${text}")]]
Click "${text}" sub menu to "${url}"
    Wait Until Element Spin
    Click   xpath=//a[contains(@class, "sub-menu") and descendant::span[contains(text(), "${text}")]]
    ${curent_url}=  Get Url
    Should Be Equal    ${curent_url}    ${URL_DEFAULT}${url}
User look message "${message}" popup
    ${contains}=    Get Regexp Matches  ${message}      _@(.+)@_           1
    ${cnt}=         Get length          ${contains}
    IF  ${cnt} > 0
        ${message}=  Replace String     ${message}      _@${contains[0]}@_  ${STATE["${contains[0]}"]}
    END
    Element Text Should Be          id=swal2-html-container     ${message}
    ${element}=  Set Variable        xpath=//*[contains(@class, "swal2-confirm")]
    ${passed}    Run Keyword And Return Status
                 ...    Element Should Be Visible        ${element}
    IF    '${passed}' == 'True'
        Click   ${element}
    END
Click Confirm To Action
    ${element}  Set Variable        xpath=//*[contains(@class, "ant-popover")]//*[contains(@class, "ant-btn-primary")]
    ${count}=   Get Element Count   ${element}
    IF    ${count} > 0
        Click   ${element}
    END
Wait Until Element Spin
    ${element}  Set Variable        xpath=//*[contains(@class, "ant-spin-spinning")]
    ${count}=   Get Element Count  ${element}
    IF    ${count} > 0
        Wait Until Element Is Not Exist   ${element}
    END