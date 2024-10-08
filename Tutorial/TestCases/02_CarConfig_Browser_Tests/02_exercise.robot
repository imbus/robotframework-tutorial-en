*** Settings ***
Library     Browser


*** Variables ***
${error_snackbar}    simple-snack-bar


*** Test Cases ***
Denied Login with invalid credentials
    [Documentation]    A user shall not login by giving invalid credentials.
    No Operation

