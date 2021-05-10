#language: pt

@teste
Funcionalidade: Teste de login 

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
