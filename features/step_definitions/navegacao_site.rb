#Cenario: Validar que eu consiga adicionar um produto no carrinho 
Quando('eu preencho meu email {string} e senha {string}') do |email, senha|
    click_on 'Sign in'
    page.execute_script "window.scrollBy(0,400)"
    find('input[id="email"]').set email
    find('input[id="passwd"]').set senha
end

Quando('clico em entrar') do
    click_button('SubmitLogin')

end
Quando('clico em comprar um produto') do
    find('#header_logo').click
    page.execute_script "window.scrollBy(0,600)"
    find('img[title="Faded Short Sleeve T-shirts"]').click
    page.execute_script "window.scrollBy(0,300)"
    find('i[class="icon-plus"]').click
    find('a[id="color_14"]').click
    click_on 'Add to cart'
    sleep 1

end
Quando('entro no carrinho') do
    find('a[title="Proceed to checkout"]').click
    
end
Então('eu vejo o meu produto no carrinho') do
    text 'Your shopping cart'
    text 'Product'
    text 'Faded Short Sleeve T-shirts'

end
#Cenario: Validar uma buscar por produto na opção “Procurar”
Quando('clico em procurar') do
    find('#header_logo').click

end
Quando('preencho o nome do produto') do
    fill_in 'search_query_top', with: 'Blouse'
    click_on 'Search'
    page.execute_script "window.scrollBy(0,300)"
  
end
Então('eu vejo o produto procurado') do
    text 'Blouse'

end
#cenario: Validar que eu consiga passar os banners na home
Quando('clico na seta do banner') do
    find('#header_logo').click
    find('a[class="bx-next"]').click
    find('a[class="bx-next"]').click
    find('a[class="bx-next"]').click

end
Então('o banner passa para o lado') do
    find('img[src="http://automationpractice.com/modules/homeslider/images/sample-3.jpg"]')
end
#Cenario: Validar que eu consiga deixar os produtos em lista 
Quando('procuro a categoria de um produto') do
    find('#header_logo').click
    find('a[title="Women"]').click
    page.execute_script "window.scrollBy(0,800)"

end
Quando('clico no icone de lista') do
    find('.icon-th-list').click
    
end
Então('os produtos são exibidos em Lista') do
    text 'Lista'
end

#Cenario: Validar que eu consiga filtrar uma busca pelo tamanho “S”
Quando('clico no filtro das letras “S”') do
    find('#header_logo').click
    find('a[title="Women"]').click
    page.execute_script "window.scrollBy(0,800)"
    find('#uniform-layered_id_attribute_group_1').click
    sleep 5

  end
  Então('é feita uma nova pesquisa com a letra clicada') do
  end
  