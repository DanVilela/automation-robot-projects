*** Settings ***
Documentation    Suite para testar o site da Amazon
Resource         amazon_resources.robot
Test Setup       Abrir Navegador
Test Teardown    Fechar Navegador

*** Test Cases ***

Caso de teste 01 - Acesso ao menu "Eletronicos"
    [Documentation]    Este teste serve para verificar o menu Eletrônicos do site da amazon.com.br
    ...                e verifica a categoria Computadores e Informatica
    [Tags]             menus    categorias
    Acessar a home page do site Amazon.com.br
    Entrar no menu Eletronicos
    Verificar se aparece a frase Eletronicos e Tecnologia
    Verificar se o titulo da pagina fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Computadores e Informática"

Caso de teste 02 - Pesquisa de um Produto
  [Documentation]    Este teste serve para verificar a busca de um produto
  [Tags]             busca_produtos    lista_busca
    Acessar a home page do site Amazon.com.br
    Digitar o nome do produto "Xbox Series S" no campo de Pesquisa
    Clicar no botao de Pesquisa
    Verificar o resultado da pesquisa se esta listando o produto "Console Xbox Series S" 
