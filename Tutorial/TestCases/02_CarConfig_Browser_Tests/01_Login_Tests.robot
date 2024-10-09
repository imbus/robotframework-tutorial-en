*** Settings ***
Library     Browser


*** Test Cases ***
Login with correct data
    [Documentation]    A user shall login by giving correct credentials.
    New Browser    headless=False
    New Context    tracing=trace.zip
    New Page    http://car.keyword-driven.de
    Type Text    id=input_username    user00
    Type Text    id=input_password    password
    Click    id=button_login
    Get Title    ==    CarConfigurator
    Get Url    ==    http://car.keyword-driven.de/list
