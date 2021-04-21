#language:pt 

@teste_componentes
Funcionalidade: testando componentes 

Cenario: Validar ordenação de uma categoria 

Dado que eu acesso o site 
Quando entro na categoria de um produto  
E clico na ordenação 
Então é feita uma nova pesquisa com o filtro selecionado 

Cenario: Validar que o Breadcrumb siga o caminho navegado 

Dado que eu acesso o site 
Quando entro na categoria do produto  
Então o Breadcrumb acompanha o caminho da navegação 

Cenario: Procurar por produto na categoria mais vendidos 

Dado que eu acesso o site teste 
Quando entro na categoria mais vendidos   
Então exibe os produtos mais vendidos

Cenario: Validar navegação entre as informações da minha conta 

Dado que eu acesso o site 
Quando entro na minha conta 
E entro nas informações da conta 
Então eu navego pelas informações no site 

Cenario: validar que links de rede social 

Dado que eu acesso o site 
Quando entro na minha conta 
E entro nos links de rede social 
Então entro na rede social do site  
