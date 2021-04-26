class LoginPage < SitePrism::Page
 
 element :senha,                  'input[id="passwd"]'
 element :email_login,            'input[id="email"]'
 element :email_invalido,         'input[id="email"]'
 element :email_valido,           'input[id="email"]'
 element :senha_invalida,         'input[id="passwd"]'
 element :senha_valida,           'input[id="passwd"]'

end 