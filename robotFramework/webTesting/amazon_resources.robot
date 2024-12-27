*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${URL}               http://www.amazon.com.br
${MAIN_PAGE_LOGO}    //a[@aria-label='Amazon.com.br']
${MENU_ELETRONICS}   //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${TEXT_HEADER_ELETRONICS}    Eletrônicos e Tecnologia
${HEADER_ELETRONICS}   //h2[@class='a-size-base a-color-base apb-browse-refinements-indent-1 a-text-bold'][contains(.,'Eletrônicos e Tecnologia')]
${TITLE}            Eletrônicos e Tecnologia
${TITLE_CATEGORIES}    Computadores e Informática    

*** Keywords ***
Abrir Navegador
    Open Browser    browser=chrome    options=add_experimental_option("detach", True)
    Maximize Browser Window
Fechar Navegador
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element is Visible    locator=${MAIN_PAGE_LOGO}
    Sleep    10s
Entrar no menu Eletronicos
    Click Element    locator=${MENU_ELETRONICS}
    
Verificar se aparece a frase Eletronicos e Tecnologia
     Wait Until Page Contains    text=${TEXT_HEADER_ELETRONICS}
     Wait Until Element Is Visible    locator=${HEADER_ELETRONICS}

Verificar se o titulo da pagina fica "${TITLE}"
    Title Should Be    title=${TITLE}
     
 Verificar se aparece a categoria "${TITLE_CATEGORIES}"
    Element Should Be Visible    locator=//div[@class='a-cardui-footer dcl-card-footer'][contains(.,'${TITLE_CATEGORIES}')]    