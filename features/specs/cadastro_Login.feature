#language: pt


Funcionalidade: Criando cadastro 
@cadastro
Cenario: Validar que eu consiga fazer um cadastro no site 

Dado que eu acesso o site  
Quando eu clico em fazer um cadastro 
E preencho minhas informações  
| email                  | julioc.tasssasde1@gmail.com         |            
| nome                   | Julio                               |
| segundo_Nome           | Cesar                               |
| senha                  | @Ju95821488                         |
| complemento            | Colinas 2                           |
| endereço               | Rua joão puga dias - 356            |
| edereço_linha          | Casa                                |
| cidade                 | Mairiporã                           |
| cep                    | 00000                               |
| informações_Adicionais | Essa é minha validação automatizada |
| telefone               |(11)4444-6666                        |
| telefone_Celular       |(11)6378-8485                        |
| endereço_Alternativo   | São paulo                           |
E clico em finalizar cadastro 
Então eu finalizo meu cadastro com sucesso 

Cenario: Validar login no site 

Dado que eu acesso o site  
Quando eu clico em fazer login 
E preecho email e senha validos 
| Email_Login            | julioc.9765@gmail.com                |
| Senha                  | @Ju95821488                          |
Então eu realizo login com sucesso 

Cenario: Validar login com email e senha invalidos  

Dado que eu acesso o site 
Quando eu clico em fazer login 
E preecho login com email e senha invalidos
| Email_Invalida          | julioteste@gmail.com.               |
| Senha_Invalida          | @Ju958214888as8                     |
Então eu não consigo realizar login 

Cenario: Validar login com email valido e senha invalida 

Dado que eu acesso o site 
Quando eu clico em fazer login 
E preecho email valido e login invalido  
| Email_Valido          | julioc.9755@gmail.com                 |
| Senha_Invalida        | @Ju95821488..                         |
Então eu não realizo o meu login  

Cenario: Validar login com email invalido e senha valida 

Dado que eu acesso o site 
Quando eu clico em fazer login 
E preecho email invalido e login valido  
| Email_Invalida          | julio42@gmail.com.                  |
| Senha_Valida            | @Ju95821488                         |
Então eu não consigo fazer login 
