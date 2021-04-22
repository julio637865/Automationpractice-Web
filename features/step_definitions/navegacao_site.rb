#Cenario: Validar que o Breadcrumb siga o caminho navegado
Quando('entro na categoria de produto') do
    @bradcramp = BreadcrumbPage.new
    @bradcramp.botao_women.click
    @bradcramp.bradcramp_woman.visible?
    @bradcramp.top.click
    @bradcramp.bradcramp_top.visible?
    @bradcramp.produto.click
    @bradcramp.bradcramp_produto.visible?

end
Então('eu visualizo o Breadcrumb acompanhando o caminho da navegação') do
    expect(page).to have_content ('Faded Short Sleeve T-shirts')
end
#Cenario: Validar que seja possível incluir um produto no carrinho  
Quando('clico em comprar um produto') do
    @carrinho = ProdutoNoCarrinhoPage.new

   
end
Quando('entro no carrinho') do
 

end  
Então('eu vejo o meu produto no carrinho') do
 

end
