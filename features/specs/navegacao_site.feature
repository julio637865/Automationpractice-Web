#language: pt 


Funcionalidade: Navegação do site
@navegacaosite
Cenario: Validar que eu consiga adicionar um produto no carrinho 

Dado que eu acesso o site 
Quando eu preencho meu email 'julioc.9730@gmail.com' e senha '@Ju95821488'
E clico em entrar 
E clico em comprar um produto 
E entro no carrinho 
Então eu vejo o meu produto no carrinho 

Cenario: Validar uma buscar por produto na opção “Procurar”

Dado que eu acesso o site 
Quando eu preencho meu email 'julioc.9730@gmail.com' e senha '@Ju95821488'
E clico em entrar 
E clico em procurar 
E preencho o nome do produto 
Então eu vejo o produto procurado 


Cenario: Validar que eu consiga passar os banners na home

Dado que eu acesso o site 
Quando eu preencho meu email 'julioc.9730@gmail.com' e senha '@Ju95821488'
E clico em entrar  
E clico na seta do banner 
Então o banner passa para o lado  

Cenario: Validar que eu consiga deixar os produtos em lista 

Dado que eu acesso o site 
Quando eu preencho meu email 'julioc.9730@gmail.com' e senha '@Ju95821488'
E clico em entrar 
E procuro a categoria de um produto 
E clico no icone de lista 
Então os produtos são exibidos em Lista  


Cenario: Validar que eu consiga filtrar uma busca pelo tamanho “S”

Dado que eu acesso o site 
Quando eu preencho meu email 'julioc.9730@gmail.com' e senha '@Ju95821488'
E clico em entrar 
E procuro a categoria de um produto 
E clico no filtro das letras “S”
Então é feita uma nova pesquisa com a letra clicada