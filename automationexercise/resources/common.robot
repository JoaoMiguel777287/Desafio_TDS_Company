*** Variables ***
${URL}    https://www.automationexercise.com/
${BROWSER}    chrome





*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Click Link    xpath=//a[contains(text(),'Signup / Login')]
    Maximize Browser Window

Open Browser To Signup Page
    Open Browser    ${URL}    ${BROWSER}
    Click Link    xpath=//a[contains(text(),'Signup / Login')]
    Maximize Browser Window
