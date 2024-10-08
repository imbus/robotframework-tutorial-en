*** Settings ***
Documentation       A test suite for valid login.
...
...                 Keywords are imported from the resource file

Resource            keywords.resource


*** Test Cases ***
Login User with Password
    Connect to Server
    Login User    ironman    1234567890
    Verify Valid Login    Tony Stark
    [Teardown]    Close Server Connection

Login Admin with Password
    [Documentation]    This one will fail...
    Connect to Server
    Login User    admin    1234567890
    Verify Valid Login    Administrator
    [Teardown]    Close Server Connection

Denied Login with Wrong Password
    [Tags]    negative
    Connect to Server
    TRY
        Login User    ironman    123
    EXCEPT    *Invalid Password    type=GLOB
        Log    Correct Denied Login
    END
    Verify Unauthorised Access
    [Teardown]    Close Server Connection
