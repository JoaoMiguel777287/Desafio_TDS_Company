*** Settings ***
Library    SeleniumLibrary

Library    SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${BASE_URL}       https://www.automationexercise.com/ 




*** Keywords ***
Abrir Navegador Inicial
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    # É uma boa prática esperar por um elemento inicial para garantir que a página carregou
    Wait Until Element Is Visible    xpath=//a[contains(.,'Signup / Login')]    timeout=10s
    Log To Console    "Navegador aberto e na página inicial (${BASE_URL})."

Fechar Todos Os Navegadores
    Close All Browsers
    Log To Console    "Todos os navegadores foram fechados."

