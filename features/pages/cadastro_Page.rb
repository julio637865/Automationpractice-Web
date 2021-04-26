class CadastroPage < SitePrism::Page

    set_url '/'
    element :email_de_cadastro,         '#email_create'
    element :criar_conta,               '#SubmitCreate'
    element :genero_senhor,             '#id_gender1'
    element :primeiro_nome,             '#customer_firstname'
    element :segundo_Nome,              '#customer_lastname'
    element :senha,                     '#passwd'
    element :complemento,               '#company'
    element :endereco,                  '#address1'
    element :edereco_linha,             '#address2' 
    element :cidade,                    '#city'
    element :cep,                       '#postcode'
    element :infromacoes_adicionais,    '#other'
    element :telefone,                  '#phone'
    element :telefone_celular,          '#phone_mobile'  
    element :endereco_alternativo,      '#alias'
   
   end
   