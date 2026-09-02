*** Settings ***
Library    ../libraries/my_library.py


*** Test Cases ***
My First Test
    Log    Hello Robot Framework
    Should Be Equal    10    10

Addition Test
    ${result}=    Evaluate    10 + 20
    Should Be Equal As Integers    ${result}    30

String Test
    ${name}=    Set Variable    Sanjay
    Should Be Equal    ${name}    Sanjay

Addition Test New
    ${result}=    ADD NUMBERS    10    20
    Should Be Equal As Integers    ${result}    30

Greeting Test
    ${message}=    GREET USER    Sanjay
    Log To Console    ${message}
    Should Be Equal    ${message}    Hello, Sanjay!
