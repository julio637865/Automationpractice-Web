#language:pt

Funcionalidade: Navegação site 

Cenario: Validar que o Breadcrumb siga o caminho navegado
 
Dado que eu acesso o site
Quando entro na categoria de produto  
Então eu visualizo o Breadcrumb acompanhando o caminho da navegação

@teste
Cenario: Validar que seja possível incluir um produto no carrinho  
 
Dado que eu acesso o site
Quando clico em comprar um produto
E entro no carrinho
Então eu vejo o meu produto no carrinho
