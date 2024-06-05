*** Comments ***
Dear Participants,

This is a Comment.


*** Settings ***
Library     String
Suite Setup    Log To Console    This happens Before All
Suite Teardown    Log To Console    This happens After All


*** Variables ***
${Speaker}       René Rohner


*** Test Cases ***
Testfall 1
    [Tags]    marker1    marker2
    [Timeout]    10 s
    [Setup]    Log To Console    This is at the beginning of a test
    I am a Keyword   I am a Value
    Log To Console    I am a Value Too
    [Teardown]    Log To Console    This is the end


*** Keywords ***
I am a Keyword
    [Documentation]    This is the keyword Documentation
    ...
    ...    It may have multiple lines...
    [Arguments]    ${message}
    Log    ${message}
