class CadastroPage < SitePrism::Page
    #cadastro de login 
 
 element :Email,                  '#email_create'
 element :Criar_conta,            'input[id="email_create"]'
 element :Sexo_do_usuario,        '#SubmitCreate'
 element :Nome,                   '#customer_firstname'
 element :Segundo_Nome,           '#customer_lastname'
 element :Senha,                  '#passwd'
 element :Complemento,            '#company'
 element :Endereço,               '#address1'
 element :Edereço_linha,          '#address2' 
 element :Cidade,                 '#city'
 element :CEP,                    '#postcode'
 element :Informações_Adicionais, '#other'
 element :Telefone,               '#phone'
 element :Telefone_Celular,       '#phone_mobile'  
 element :Endereço_Alternativo,   '#alias'

    #login com conta criada 
 element :Email_Login,            'input[id="email"]' 
 element :Email_Login,            'input[id="email"]'
 element :Senha,                  'input[id="passwd"]'

    #login com email e senha invalidos 
 element :Email_Invalido,         'input[id="email"]'
 element :Senha_Invalida,         'input[id="passwd"]'

    #login com senha invalida 
 element :Email_Valido,           'input[id="email"]'
 element :Senha_Invalida,         'input[id="passwd"]'

    #login com email invalido 
 element :Email_Invalida,         'input[id="email"]'
 element :Senha_Valida,           'input[id="passwd"]'

end 