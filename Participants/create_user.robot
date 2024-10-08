*** Settings ***
Library     RequestsLibrary


*** Variables ***
${username}    hulk
${password}    smash



*** Test Cases ***
Create User
    VAR    &{newUser}    username=${username}    password=${password}
    VAR    &{headers}    Content-Type=application/json
    ${response}    POST    http://car.keyword-driven.de/api/create_user.php    headers=${headers}    json=${newUser}
    Should Be Equal As Strings    ${response.status_code}    200
