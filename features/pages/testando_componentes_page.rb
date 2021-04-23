class BannerHome < SitePrism::Page

    element :passa_para_esquerda,          'a[class="bx-prev"]'
    element :passa_para_direita,           'a[class="bx-next"]'
end

class Exibeprodutos < SitePrism::Page

    element :dresses,                      'a[title="Dresses"]'
end 

class BannersRodape < SitePrism::Page

    element :banner1,                       'img[src="http://automationpractice.com/modules/themeconfigurator/img/banner-img2.jpg"]'
    element :banner2,                       'img[src="http://automationpractice.com/modules/themeconfigurator/img/banner-img2.jpg"]'
    element :banner3,                       'img[src="http://automationpractice.com/modules/themeconfigurator/img/banner-img3.jpg"]'
    element :banner4,                       'img[src="http://automationpractice.com/modules/themeconfigurator/img/banner-img4.jpg"]'
    element :banner5,                       'img[src="http://automationpractice.com/modules/themeconfigurator/img/banner-img5.jpg"]'
end     
class Filtro < SitePrism::Page
    
    element :buscar_por,                    'input[class="search_query form-control ac_input"]'
    element :ordenar_por,                   'select[id="selectProductSort"  ]'
    element :click_lupa,                    'button[class="btn btn-default button-search"]'
    element :primeiro_produto,              'img[src="http://automationpractice.com/img/p/1/2/12-home_default.jpg"]'
    element :botao_lista,                   'i[class="icon-th-list"]'
end

class Header < SitePrism::Page

    element :dresses,                       'a[title="Dresses"]'
    element :summerDresses,                 'a[title="Summer Dresses"]'
   
end

class FiltroTamanho < SitePrism::Page

element :produto,                   'img[title="Blouse"]'

end 

