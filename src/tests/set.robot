*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Set counter to a number
    Go To  ${HOME_URL}
    Input Text  set  1337
    Click Button  Aseta
    Page Should Contain  nappia painettu 1337 kertaa
