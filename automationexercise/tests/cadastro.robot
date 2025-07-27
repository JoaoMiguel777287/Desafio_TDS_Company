*** Settings ***
Documentation     Testes de Cadastro - AutomationExercise
Library           SeleniumLibrary
Resource          ../resources/common.robot
Resource          ../pages/cadastro_page.robot
Resource          ../pages/login_page.robot
Suite Setup       Open Browser To Signup Page
Suite Teardown    Close Browser

*** Test Cases ***
Cadastro Com Dados Válidos
    [Tags]    positivo
    Acessar pagina de login e cadastro
    Preencher campo name 
    Preencher Campo Email SIGNUP
    Clicar Botao signup
    Verificar redirecionamento para pagina de cadastro
    Inserir senha
    Preencher data nascimento
    Preencher nome
    Preencher endereço 
    Preencher telefone 
    Submeter ao cadastro
    Verifica se foi realizado o cadastro com sucesso
Cadastro Com Email Já Registrado
    [Tags]    negativo
    Acessar pagina de login e cadastro
    Preencher nome existente
    Preencher email já existente 
    Clicar Botao signup
    Validar que mensagem Cadastro já existe

