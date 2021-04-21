#Cenario: Validar que eu consiga fazer um cadastro no site 
Dado('que eu acesso o site') do
  @cadastro_login_page = CadastroPage.new 
  page.windows[0].maximize
  visit '/'
end

Quando('eu clico em fazer um cadastro') do
  click_on 'Sign in'
end

Quando('preencho minhas informações') do |table|
  @users = table.rows_hash
  page.execute_script "window.scrollBy(0,100)" 

  delorean
  
  @cadastro_login_page.Email.set @users[:Email]    
  @cadastro_login_page.Criar_conta.click    
  @cadastro_login_page.Sexo_do_usuario.click
  page.execute_script "window.scrollBy(0,500)" 
  @cadastro_login_page.Nome.set @users[:Nome]
  @cadastro_login_page.Segundo_Nome.set @users[:Segundo_Nome]
  @cadastro_login_page.Senha.set @users[:Senha] 

  find('#uniform-days').all(:css, 'option').find { |o| o.value == '21' }.select_option       #--> Dia de nascimento
  find('#uniform-months').all(:css, 'option').find { |o| o.value == '2' }.select_option      #--> Mes de nascimento
  find('#uniform-years').all(:css, 'option').find { |o| o.value == '1997' }.select_option    #--> Ano de nascimento
  
  @cadastro_login_page.Complemento.set @users[:Complemento]
  page.execute_script "window.scrollBy(0,400)"       
  @cadastro_login_page.Endereço.set @users[:Endereço]
  @cadastro_login_page.Edereço_linha.set @users[:Edereço_linha]
  page.execute_script "window.scrollBy(0,400)" 
  @cadastro_login_page.Cidade.set @users[:Cidade]
  find('#uniform-id_state').all(:css, 'option').find { |o| o.value == '2' }.select_option
  @cadastro_login_page.CEP.set @users[:CEP]
  find('#uniform-id_country').all(:css, 'option').find { |o| o.value == '21' }.select_option
  @cadastro_login_page.Informações_Adicionais.set @users[:Informações_Adicionais]
  @cadastro_login_page.Telefone.set @users[:Telefone]
  @cadastro_login_page.Telefone_Celular.set @users[:Telefone_Celular]
  page.execute_script "window.scrollBy(0,300)" 
  @cadastro_login_page.Endereço_Alternativo.set @users[:Endereço_Alternativo]
end

Quando('clico em finalizar cadastro') do
  click_on 'Register'
end

Então('eu finalizo meu cadastro com sucesso') do
  text 'My account'
end

#Cenario: Validar login no site 
Quando('eu clico em fazer login') do
  click_on 'Sign in'
end

Quando('preecho email e senha validos') do |table|
  @users = table.rows_hash
  page.execute_script "window.scrollBy(0,400)"
  @cadastro_login_page.Email_Login.set @users [:Email_Login]
  @cadastro_login_page.Senha.set @users [:Senha]
  click_button('SubmitLogin')
end

Então('eu realizo login com sucesso') do
  text 'My account'
end


#Cenario: Validar login com email e senha invalidos 
Quando('preecho login com email e senha invalidos') do |table|
  @users = table.rows_hash
  page.execute_script "window.scrollBy(0,400)"
  @cadastro_login_page.Email_Invalida.set @users[:Email_Invalida]
  @cadastro_login_page.Senha_Invalida.set @users[:Senha_Invalida]
  click_button('SubmitLogin')
end

Então('eu não consigo realizar login') do
  text 'There is 1 error'
end

#Cenario: Validar login com email valido e login invalido 
Quando('preecho email valido e login invalido') do |table|
  @users = table.rows_hash
  page.execute_script "window.scrollBy(0,400)"
  @cadastro_login_page.Email_Valido.set @users [:Email_Valido]
  @cadastro_login_page.Senha_Invalida.set @users [:Senha_Invalida  ]
  click_button('SubmitLogin')
end

Então('eu não realizo o meu login') do
  text 'There is 1 error'
  text 'Invalid email address.'
end

#Cenario: Validar login com email invalido e login valido 
Quando('preecho email invalido e login valido') do |table|
  @users = table.rows_hash
  page.execute_script "window.scrollBy(0,400)"
  @cadastro_login_page.Email_Invalida.set @users[:Email_Invalida]
  @cadastro_login_page.Senha_Valida.set @users[:Senha_Valida]
  click_button('SubmitLogin')
end

Então('eu não consigo fazer login') do
  text 'There is 1 error'
  text 'Authentication failed.'
end
