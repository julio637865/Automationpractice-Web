#language:pt

Funcionalidade: Navegação site 

Cenario: Validar que o Breadcrumb siga o caminho navegado
 
Dado que eu acesso o site
Quando entro na categoria de produto  
Então eu visualizo o Breadcrumb acompanhando o caminho da navegação

Cenario: Validar que seja possível incluir um produto no carrinho  
 
Dado que eu acesso o site
Quando clico em comprar um produto
E entro no carrinho
Então eu vejo o meu produto no carrinho

Cenario: Validar que se o usuário acessar os links de rede social ele seja direcionado aos respectivos sites  

Dado que eu acesso o site 
Quando entro na minha conta 
E entro nos links de rede social 
Então entro na rede social do site  

Cenario: Validar uma buscar por produto na opção “Procurar”

Dado que eu acesso o site 
Quando eu clico em procurar um produto 
E preencho o nome do produto 
|    produto    | Print Dress   |
Então eu vejo o produto procurado 

