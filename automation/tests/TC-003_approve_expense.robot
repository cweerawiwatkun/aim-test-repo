*** Settings ***
Library    RequestsLibrary

*** Variables ***
${API}    http://localhost:8000

*** Test Cases ***
TC-003 Approve Expense (API)
    [Documentation]    Create expense via API then approve it
    ${resp}=    POST    ${API}/expenses    {"title":"Lunch","amount":45.5}
    Should Be Equal As Integers    ${resp.status_code}    200
    ${data}=    To JSON    ${resp.content}
    ${id}=    Set Variable    ${data['id']}
    ${resp2}=    POST    ${API}/expenses/${id}/approve
    Should Be Equal As Integers    ${resp2.status_code}    200
