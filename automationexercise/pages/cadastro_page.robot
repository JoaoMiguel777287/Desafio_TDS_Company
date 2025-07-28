***Settings***
Library    SeleniumLibrary
Library    FakerLibrary     locale=pt_BR
Resource  ../pages/login_page.robot

***Variables***
${Signup_Login}    //a[contains(.,'Signup / Login')]
${Name_Field}      //input[contains(@name,'name')]  
${Email_Field_Signup}    //input[@data-qa='signup-email']
${Email_Signup}    FakerLibrary.Email
${Password_Field}   //input[@name='password']
${Password}         Senha@123
${Days}             //select[@name='days']
${Months}           //select[@name='months'] 
${Years}             //select[@name='years']  
${First_name_Field}     //input[@name='first_name']   
${Last_Name_Field}      //input[@name='last_name']
${Adress_1_Field}         //input[@name='address1'] 
${Adress}                    Teste
${State_Field}            //input[@name='state']
${State}                    Teste
${City_Field}            //input[@name='city']
${City}                    Teste
${Zipcode_field}        //input[@name='zipcode']
${Zidcode}              99999999
${Mobile_Number_Field}    //input[@data-qa='mobile_number'] 
${Mobile_Number}            FakerLibrary.Phone Number
      

# ---- Buttons ------#
${Button_Creat}            //button[contains(.,'Create Account')]
${Signup_Button}    //button[contains(.,'Signup')]

***Keywords***
# --- Palavras-chave de Ação ---

Preencher campo name 
    ${Name_gerado}=            FakerLibrary.Name 
    Wait Until Element Is Visible    ${Name_Field}
    Input Text    ${Name_Field}    ${Name_gerado}
Preencher Campo Email SIGNUP
    ${Email_Gerado}=     FakerLibrary.Email
    Input Text    ${Email_Field_Signup}     ${Email_Gerado}


Clicar Botao signup
   Click Button    ${Signup_Button}

# --- Palavras-chave de Verificação (Asserções da Página) ---

Verificar redirecionamento para pagina de cadastro
    Wait Until Page Contains    Enter Account Information


Inserir senha
    Input Password    ${Password_Field}   ${Password}

Preencher data nascimento
    Select From List By Value    ${Days}    1
    Select From List By Label    ${Months}    January     
    Select From List By Value    ${Years}    2008

Preencher nome
    ${First_Name}            FakerLibrary.First Name
    ${Last_Name}             FakerLibrary.Last Name 
    
    Input Text    ${First_name_Field}     ${First_Name}
    Input Text    ${Last_Name_Field}    ${Last_Name}


Preencher endereço 
    Input Text    ${Adress_1_Field}    ${Adress}   
    Input Text     //input[@name='state']    Teste
    Input Text    ${City_Field}    ${City}
    Input Text    ${Zipcode_field}    ${Zidcode}  

Preencher telefone
    Input Text    ${Mobile_Number_Field}    ${Mobile_Number}

Submeter ao cadastro
    Click Button    ${Button_Creat}    


Verifica se foi realizado o cadastro com sucesso
    Wait Until Element Is Visible    //b[contains(.,'Account Created!')]
    Title Should Be    Automation Exercise - Account Created



Preencher nome existente
...    ${Name_gerado}=            FakerLibrary.Name
        Input Text    ${Name_Field}    ${Name_gerado}  

Preencher email já existente 
    Input Text    ${Email_Field_Signup}    ${Email} 


Validar que mensagem Cadastro já existe
    Sleep    10
    Page Should Contain     Email Address already exist!  
