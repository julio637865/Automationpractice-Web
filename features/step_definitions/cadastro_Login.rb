#Cenario: Validar que eu consiga fazer um cadastro no site 
Dado('que eu acesso o site') do
  @cadastro = CadastroPage.new 
  page.windows[0].maximize
  @cadastro.load
end
Quando('eu clico em fazer um cadastro') do
  click_on 'Sign in'
end
Quando('preencho minhas informações') do |table|
  info = table.rows_hash
  @cadastro.email_de_cadastro.set      info[:email                ]     
  @cadastro.criar_conta.click  
  sleep  2
  @cadastro.genero_senhor.click 
  @cadastro.primeiro_nome.set          info[:nome                 ] 
  @cadastro.segundo_Nome.set           info[:segundo_Nome         ]
  @cadastro.senha.set                  info[:senha                ] 

  find('#uniform-days').all(:css,   'option').find { |o| o.value == '21' }.select_option      #--> Dia de nascimento
  find('#uniform-months').all(:css, 'option').find { |o| o.value == '2' }.select_option      #--> Mes de nascimento
  find('#uniform-years').all(:css,  'option').find { |o| o.value == '1997' }.select_option  #--> Ano de nascimento
  
  @cadastro.complemento.set            info[:complemento           ]    
  @cadastro.endereco.set               info[:endereço              ]
  @cadastro.edereco_linha.set          info[:edereço_linha         ]
  @cadastro.cidade.set                 info[:cidade                ]

  find('#uniform-id_state').all(:css,   'option').find { |o| o.value == '2' }.select_option     #--> Estado

  @cadastro.cep.set                    info[:cep                   ]

  find('#uniform-id_country').all(:css, 'option').find { |o| o.value == '21' }.select_option   #--> Pais

  @cadastro.infromacoes_adicionais.set info[:informações_Adicionais]
  @cadastro.telefone.set               info[:telefone              ]
  @cadastro.telefone_celular.set       info[:telefone_Celular      ]
  @cadastro.endereco_alternativo.set   info[:endereço_Alternativo  ]
end
Quando('clico em finalizar cadastro') do
  click_on 'Register'
end
Então('eu finalizo meu cadastro com sucesso') do
  expect(page).to have_content ('My account')
end
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
