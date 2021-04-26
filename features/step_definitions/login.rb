#Cenario: Validar login no site 
Quando('eu clico em fazer login') do
  @login = LoginPage.new
  click_on 'Sign in'
end
Quando('preecho email e senha validos') do |table|
  dados = table.rows_hash
  @login.email_login.set              dados[:Email_Login           ]
  @login.senha.set                    dados[:Senha                 ]
  click_button('SubmitLogin')
end
Então('eu realizo login com sucesso') do
  expect(page).to have_content ('My account')
end
#Cenario: Validar login com email e senha invalidos 
Quando('preecho login com email e senha invalidos') do |table|
  dados = table.rows_hash
  @login.email_invalido.set           dados[:Email_Invalida        ]
  @login.senha_invalida.set           dados[:Senha_Invalida        ]
  click_button('SubmitLogin')
end
Então('eu não consigo realizar login') do
  expect(page).to have_content ('There is 1 error')
end
#Cenario: Validar login com email valido e login invalido 
Quando('preecho email valido e login invalido') do |table|
  dados = table.rows_hash
  @login.email_invalido.set           dados[:Email_Valido           ]
  @login.senha_invalida.set           dados[:Senha_Invalida         ]
  click_button('SubmitLogin')
end
Então('eu não realizo o meu login') do
  expect(page).to have_content ('There is 1 error')
end
#Cenario: Validar login com email invalido e login valido 
Quando('preecho email invalido e login valido') do |table|
  dados = table.rows_hash
  @login.email_invalido.set          dados[:Email_Invalida          ]
  @login.senha_invalida.set          dados[:Senha_Valida            ]
  click_button('SubmitLogin')
end
Então('eu não consigo fazer login') do
  expect(page).to have_content ('There is 1 error')
end
