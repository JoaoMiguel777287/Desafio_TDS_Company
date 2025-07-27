***Settings***
Library    SeleniumLibrary

***Variables***
${Signup_Login}    //a[contains(.,'Signup / Login')]
${Email_Field}    //input[@data-qa='login-email']
${Email}          usuario_valido@teste.com
${Password_Field}    //input[@data-qa='login-password']
${Password}        Senha@123
${Password_errada}      Senha11111
${Login_Button}    //button[contains(.,'Login')]

***Keywords***
# --- Palavras-chave de Ação ---

Acessar pagina de login e cadastro
    Wait Until Element Is Visible    ${Signup_Login} 
    Click Element    ${Signup_Login}

Preencher Campo Email LOGIN
    Wait Until Element Is Visible    ${Email_Field}    
    Input Text   ${Email_Field}        ${Email}

Preencher Campo Senha LOGIN
    Wait Until Element Is Visible    ${Password_Field} 
    Input Password    ${Password_Field}      ${Password}
    
Clicar Botao Login
    Click Element    ${Login_Button}

# --- Palavras-chave de Verificação (Asserções da Página) ---

Verificar login realizado
    Wait Until Page Contains    Logged in as


Preencher campo senha errada
    Input Password    ${Password_Field}    ${Password_errada}  

Verifica mensagem de email ou senha incorretos      
     Wait Until Page Contains    Your email or password is incorrect!