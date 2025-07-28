*** Settings ***
Documentation     Testes de Login - AutomationExercise
Library           SeleniumLibrary
Resource          ../resources/common.robot
Resource          ../pages/login_page.robot
Suite Setup        Abrir Navegador Inicial
Suite Teardown     Fechar Todos Os Navegadores

*** Test Cases ***
Login Com Credenciais Válidas
    Acessar pagina de login e cadastro
    Preencher Campo Email LOGIN
    Preencher Campo Senha LOGIN
    Clicar Botao Login
    Verificar login realizado


Login Com Senha Incorreta
    [Tags]    negativo
    Abrir Navegador Inicial
    Acessar pagina de login e cadastro
    Preencher Campo Email LOGIN
    Preencher campo senha errada
    Clicar Botao Login
    Verifica mensagem de email ou senha incorretos   

