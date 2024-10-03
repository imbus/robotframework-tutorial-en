*** Settings ***
Documentation       A test suite for valid login.
...
...                 Keywords are imported from the resource file

Resource            keywords.resource

Suite Setup         Connect to Server
Test Setup          Login Admin
Test Teardown       Logout User
Suite Teardown      Disconnect


*** Test Cases ***
Access All Users With Admin Rights
    [Documentation]    Tests if all users can be accessed with Admin User.
    Print All Users

Create User With Admin Rights
    [Documentation]    Tests if a new users can be created with Admin User.
    Create New User
    ...    name=Peter Parker
    ...    login=spider
    ...    password=123spiderman321
    ...    right=user\
    Verify User Details    spider    Peter Parker
    Logout User
    Login User    spider    123spiderman321

Update User with Admin Rights
    [Documentation]    Changes Password of an existing user.
    Change Users Password    spider    friendly_spider_2022
    Logout User
    Login User    spider    friendly_spider_2022

Update Own Password With User Rights
    [Documentation]    Changes Password of an existing user.
    [Setup]    Login User    hulk    Hulk...SMASH!
    Change Own Password   new_password=Don't make Hulk angry!    old_password=Hulk...SMASH!
    Logout User
    Login User    hulk    Don't make Hulk angry!

Access Own Details With User Rights
    [Documentation]    Tests if a user can access own details
    [Setup]    Login User    ironman    1234567890
    ${user_id}=    Get User Id    ironman
    &{user_details}=    Get User Details    ${user_id}
    &{my_details}=    Get User Details
    Should Be Equal    ${user_details}     ${my_details}
    Should Be Equal    ${user_details}[login]    ironman    #normal access
    Should Be Equal    ${user_details}[name]    Tony Stark
    Should Be Equal    ${user_details.right}    user        #advanced dot access
    Should Be Equal    ${user_details.active}    ${True}

Access Other Details With Admin rights
    [Documentation]    Tests if a user can access own details
    [Setup]    Login User    admin    @RBTFRMWRK@
    ${user_id}=    Get User Id    ironman
    &{user_details}=    Get User Details    ${user_id}
    Should Be Equal    ${user_details}[login]    ironman    #normal access
    Should Be Equal    ${user_details}[name]    Tony Stark
    Should Be Equal    ${user_details.right}    user        #advanced dot access
    Should Be Equal    ${user_details.active}    ${True}

