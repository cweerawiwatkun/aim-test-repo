*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${FRONTEND}    http://localhost:8001

*** Test Cases ***
TC-002 Create Expense (UI)
    [Documentation]    Opens the sample frontend and submits a new expense
    Open Browser    ${FRONTEND}/index.html    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    name=title    10s
    Input Text    name=title    Taxi fare
    Input Text    name=amount    120.50
    Input Text    name=currency    THB
    Input Text    name=submitted_by    TestUser
    Click Button    xpath=//button[text()='Submit Expense']
    Wait Until Page Contains    Taxi fare    10s
    Capture Page Screenshot    ../screenshots/TC-002_create.png
    Close Browser
