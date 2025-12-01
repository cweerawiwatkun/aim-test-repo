*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE}    https://the-internet.herokuapp.com

*** Test Cases ***
TC-001 Valid Login
    [Documentation]    Manual: Login with valid credentials (TC-001)
    Open Browser    ${BASE}/login    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    id=username    10s
    Input Text    id=username    tomsmith
    Input Text    id=password    SuperSecretPassword!
    Click Button    xpath=//button[@type='submit']
    Wait Until Page Contains    You logged into a secure area!    10s
    Capture Page Screenshot    ../screenshots/TC-001_valid.png
    Close Browser

TC-001 Invalid Login
    [Documentation]    Manual: Login with invalid password (TC-001)
    Open Browser    ${BASE}/login    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    id=username    10s
    Input Text    id=username    tomsmith
    Input Text    id=password    wrongpassword
    Click Button    xpath=//button[@type='submit']
    Wait Until Page Contains    Your password is invalid!    10s
    Capture Page Screenshot    ../screenshots/TC-001_invalid.png
    Close Browser
