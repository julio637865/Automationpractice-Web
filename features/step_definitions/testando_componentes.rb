#Cenario: Validar que eu consiga passar os banners na home
Quando('eu clico no botão para passar para o proximo banner na home') do
  @Banner = BannerHome.new
  @Banner.passa_para_direita.click
  @Banner.passa_para_direita.click
  @Banner.passa_para_direita.click
end  
Então('eu vejo o proximo banner') do
  @Banner.passa_para_esquerda.click
end

#Cenario: Validar que buscando por um produto seja exibido 5 itens apenas na tela de busca 
Quando('eu pesquiso por um prouto') do
  @exibeprodutos = Exibeprodutos.new
  @exibeprodutos.dresses.click
end
Então('eu visualizo apenas {int} itens na tela') do |int|
  page.should have_css('span[class="available-now"]', :count => 5)
end

#Cenario: validar que seja possivel clicar nos banners de promoção no rodapé do site 
Quando('eu clico nos banners  no rodapé do site') do
  @Bannersrodape = BannersRodape.new
  @Bannersrodape.banner1.click
  visit '/'
  @Bannersrodape.banner2.click
  visit '/'
  @Bannersrodape.banner3.click
  visit '/'
  @Bannersrodape.banner4.click
  visit '/'
end  
Então('eu sou direcionado para cada um') do
  @Bannersrodape.banner5.click
  visit '/'
end

#Cenario: validar que seja possível adicionar o filtro de  Menor preço na minha busca 
Quando('eu procuro por um produto') do |table|
  @Filtro_preço = Filtro.new
  valor = table.rows_hash
  @Filtro_preço.buscar_por.set valor[:Produto]
  @Filtro_preço.click_lupa.click
end
Quando('depois eu filtro os produtos exibidos pelo menor preço') do
  find('#uniform-selectProductSort').all(:css, 'option').find { |o| o.value == 'price:asc' }.select_option
end
Então('é feito uma nova busca trazendo os produtos em menor preço') do
  @Filtro_preço.primeiro_produto.visible?
end


#Cenario: Validar que seja possivel deixar os produtos pesquisados em lista 
Quando('clico em lista') do
  @Filtro_preço.botao_lista.click
end
Então('os produtos são exibidos em linhas') do
  @Filtro_preço.primeiro_produto.visible?
end

#Cenario: Validar que seja possível procurar por um produto na header do site 
Quando('entro na header do site') do
  @header = Header.new
  @header.dresses.hover
  @header.summerDresses.click
end
Então('eu consigo pesquisar por um produto') do
  expect(page).to have_content ('SUMMER DRESSES ')
end

#Cenario: Validar que seja possível escolher o tamanho de um produto 
Quando('entro na tela de um produto') do
  @filtroTamanho = FiltroTamanho.new
  @filtroTamanho.produto.click
 
end
Então('eu eu consigo selecionar o tamanho do produto da minha preferência') do
  within_frame(find('iframe[class="fancybox-iframe"]')) do 
    find('#uniform-group_1').all(:css, 'option').find { |o| o.value == '1' }.select_option
  end 
end

#Cenario: Validar navegação entre as informações da minha conta 
Quando('entro nas informações da conta') do
  @meusdados = DadosDaConta.new
  @meusdados.minha_conta.click
  @meusdados.email.set  'julioc.9765@gmail.com'
  @meusdados.senha.set  '@Ju95821488'
  @meusdados.entrar.click
  @meusdados.dados_da_conta.click
end
Então('eu navego pelas minhas informações no site') do
  expect(page).to have_content 'YOUR PERSONAL INFORMATION'
end