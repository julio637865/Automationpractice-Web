#Cenario: Validar que o Breadcrumb siga o caminho navegado
Quando('entro na categoria de produto') do
  @bradcramp = BreadcrumbPage.new
  @bradcramp.botao_women.click
  @bradcramp.bradcramp_woman.visible?
  @bradcramp.top.click
  @bradcramp.bradcramp_top.visible?
  @bradcramp.produto.click
end
Então('eu visualizo o Breadcrumb acompanhando o caminho da navegação') do
  @bradcramp.bradcramp_produto.visible?
end

#Cenario: Validar que seja possível incluir um produto no carrinho  
Quando('clico em comprar um produto') do
  @carrinho = ProdutoNoCarrinhoPage.new
  @carrinho.botao_women.click
  @carrinho.produto_blouse.click
  sleep 3
  within_frame(find('iframe[class="fancybox-iframe"]')) do #---> METODO PARA INTERAGIR COM IFRAME
     click_on  'Add to cart'   
    sleep 3    
  end
end
Quando('entro no carrinho') do
@carrinho.botao_X.click
@carrinho.carrinho.hover 
end  
Então('eu vejo o meu produto no carrinho') do
  expect(page).to have_content ('Blouse')  #--> PRODUTO DENTRO DO CARRINHO  
end

#Cenario: Validar que se o usuário acessar os links de rede social ele seja direcionado aos respectivos sites  
Quando('entro na minha conta') do
  @linkredescoial = LinksRedeSocial.new
  #page.execute_script "window.scrollBy(0,90)"
end
Quando('entro nos links de rede social') do
  @linkredescoial.link_facebook.click
  page.has_link?('Nova atividade')
  @linkredescoial.link_twitter.click
  page.has_link?('Tweets')
  @linkredescoial.link_youtube.click
  page.has_link?('Shorts')
  @linkredescoial.link_google_plus.click
end
Então('entro na rede social do site') do
  page.has_link?('Google')
  sleep 2 
end


#Cenario: Validar uma buscar por produto na opção “Procurar”
Quando('eu clico em procurar um produto') do
  @pesquisa = PesquisaPage.new
end
Quando('preencho o nome do produto') do |table|
  valor = table.rows_hash
  @pesquisa.nome_do_produto.set valor[:produto]
  @pesquisa.botao_lupa.click
end
Então('eu vejo o produto procurado') do
  @pesquisa.produto_pesquisado.visible?
end

