#language: pt

Funcionalidade: Validando componentes na tela do site  

Cenario: Validar que eu consiga passar os banners na home

Dado que eu acesso o site 
Quando eu clico no botão para passar para o proximo banner na home 
Então eu vejo o proximo banner 

Cenario: Validar que buscando por um produto seja exibido 5 itens apenas na tela de busca 

Dado que eu acesso o site 
Quando eu pesquiso por um prouto 
Então eu visualizo apenas 5 itens na tela 

Cenario: validar que seja possivel clicar nos banners de promoção no rodapé do site 

Dado que eu acesso o site 
Quando eu clico nos banners  no rodapé do site  
Então eu sou direcionado para cada um 

Cenario: validar que seja possível adicionar o filtro de  Menor preço na minha busca 

Dado que eu acesso o site 
Quando eu procuro por um produto  
| Produto | Printed Dress  |
E depois eu filtro os produtos exibidos pelo menor preço 
Então é feito uma nova busca trazendo os produtos em menor preço 

Cenario: Validar que seja possivel deixar os produtos pesquisados em lista 

Dado que eu acesso o site 
Quando eu procuro por um produto  
| Produto | Printed Dress  |
E clico em lista 
Então os produtos são exibidos em linhas 

Cenario: Validar que seja possível procurar por um produto na header do site 

Dado que eu acesso o site  
Quando entro na header do site   
Então eu consigo pesquisar por um produto 


Cenario: Validar que seja possível escolher o tamanho de um produto 

Dado que eu acesso o site   
Quando entro na tela de um produto  
Então eu eu consigo selecionar o tamanho do produto da minha preferência  

@teste
Cenario: Validar navegação entre as informações da minha conta 

Dado que eu acesso o site 
Quando entro na minha conta 
| Email_Login            | julioc.9765@gmail.com                |
| Senha                  | @Ju95821488                          |
E entro nas informações da conta 
Então eu navego pelas minhas informações no site


