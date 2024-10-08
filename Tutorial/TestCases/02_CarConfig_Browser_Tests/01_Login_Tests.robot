*** Settings ***
Library     Browser


*** Test Cases ***
Login with correct data
    [Documentation]    A user shall login by giving correct credentials.
    New Browser    headless=False
    New Context
    New Page    http://car.keyword-driven.de
    Type Text    id=input_username    <your_username>
    Type Text    id=input_password    <your_password>
    Click    id=button_login
    Get Title    ==    CarConfigurator
    Get Url    ==    http://car.keyword-driven.de/list
