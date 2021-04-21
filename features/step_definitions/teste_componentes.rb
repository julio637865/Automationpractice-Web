#Cenario: Validar ordenação de uma categoria 
Quando('entro na categoria de um produto') do
  visit '/'
  find('a[title="My Store"]').click
  find('a[title="Women"]').click
  page.execute_script "window.scrollBy (0,300)"

end
Quando('clico na ordenação') do
  find('#uniform-selectProductSort').click
  find('#uniform-selectProductSort').all(:css, 'option').find { |o| o.value == 'name:asc' }.select_option

end
Então('é feita uma nova pesquisa com o filtro selecionado') do

end
#Cenario: Validar que o Breadcrumb siga o caminho navegado
Quando('entro na categoria do produto') do
  find('a[title="My Store"]').click
  find('a[title="Women"]').click
  find('span[class="navigation_page"]')
  visit "http://automationpractice.com/index.php?id_category=8&controller=category"
  text 'Dresses'
  page.execute_script "window.scrollBy(0,800)"
  find('img[src="http://automationpractice.com/img/p/8/8-home_default.jpg"]').click
  text 'Printed Dress'

end  
Então('o Breadcrumb acompanha o caminho da navegação') do
end
#Cenario: Procurar por produto na categoria mais vendidos 
Dado('que eu acesso o site teste') do
  visit '/'
end
Quando('entro na categoria mais vendidos') do
  page.execute_script "window.scrollBy(0,400)"
  find('a[class="blockbestsellers"]').click

end
Então('exibe os produtos mais vendidos') do
  text '-20%'
end

#Cenario: Validar navegação entre as informações da minha conta 
Quando('entro na minha conta') do
  visit '/'
  click_on 'Sign in'
end
Quando('entro nas informações da conta') do
  page.execute_script "window.scrollBy(0,400)"
  find('input[id="email"]').set 'julioteste1@gmail.com'
  find('input[id="passwd"]').set '@Ju95821488'
  click_button('SubmitLogin')
 
end
Então('eu navego pelas informações no site') do
  page.execute_script "window.scrollBy(0,300)"
  click_on 'Order history and details'
  page.execute_script "window.scrollBy(0,300)"
  visit 'http://automationpractice.com/index.php?controller=my-account'
  find('i[class="icon-ban-circle"]').click
  page.execute_script "window.scrollBy(0,300)"
  visit 'http://automationpractice.com/index.php?controller=my-account'
  find('i[class="icon-building"]').click
  page.execute_script "window.scrollBy(0,300)"
  visit 'http://automationpractice.com/index.php?controller=my-account'
  find('i[class="icon-user"]').click
  page.execute_script "window.scrollBy(0,300)"
  visit 'http://automationpractice.com/index.php?controller=my-account'
  find('i[class="icon-heart"]').click
  page.execute_script "window.scrollBy(0,300)"

end
#Cenario: validar que links de rede social 
Quando('entro nos links de rede social') do
  find_link(href:"https://www.facebook.com/groups/525066904174158/")
  visit 'http://automationpractice.com/'

  find_link(href:"https://twitter.com/seleniumfrmwrk")
  visit 'http://automationpractice.com/'

  find_link(href:"https://www.youtube.com/channel/UCHl59sI3SRjQ-qPcTrgt0tA")
  visit 'http://automationpractice.com/'
  
  find_link(href:"https://plus.google.com/111979135243110831526/posts")
  visit 'http://automationpractice.com/'

end
Então('entro na rede social do site') do

end
