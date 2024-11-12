*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Set counter value
    Go To  ${HOME_URL}
    Input Text  id=asetaarvo  27
    Click Button  Aseta arvo
    Page Should Contain  nappia painettu 27 kertaa
