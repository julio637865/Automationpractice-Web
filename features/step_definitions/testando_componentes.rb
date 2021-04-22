#Cenario: Validar que eu consiga passar os banners na home
Quando('eu clico no botão para passar para o proximo banner na home') do
    @Banner = BannerHome.new
    @Banner.passa_para_direita.click
    sleep 1
    @Banner.passa_para_direita.click
    sleep 1
    @Banner.passa_para_direita.click
    sleep 1
    @Banner.passa_para_esquerda.click
    sleep 1
    @Banner.passa_para_esquerda.click
    sleep 1
end  
Então('eu vejo o proximo banner') do
    @Banner.passa_para_esquerda.click
    sleep 1
end
  