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