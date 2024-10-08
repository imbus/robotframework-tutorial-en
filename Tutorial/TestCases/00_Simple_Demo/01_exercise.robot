*** Settings ***
Documentation       A test suite for valid login.
...
...                 Keywords are imported from the resource file

Resource            keywords.resource


*** Test Cases ***
Test
    [Documentation]    Implement your own test case here.
    TestObject.Connect    ip=192.168.2.1