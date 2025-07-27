*** Settings ***
Documentation     Testes de Login - AutomationExercise
Library           SeleniumLibrary
Resource          ../resources/common.robot
Resource          ../pages/login_page.robot
Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser

*** Test Cases ***
Login Com Credenciais Válidas
    [Tags]    positivo
    Acessar pagina de login e cadastro
    Preencher Campo Email LOGIN
    Preencher Campo Senha LOGIN
    Clicar Botao Login
    Verificar login realizado

Login Com Senha Incorreta
    [Tags]    negativo
    Acessar pagina de login e cadastro
    Preencher Campo Email LOGIN
    Preencher campo senha errada
    Clicar Botao Login
    Verifica mensagem de email ou senha incorretos   

