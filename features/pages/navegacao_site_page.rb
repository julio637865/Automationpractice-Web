class BreadcrumbPage < SitePrism::Page 

    element :botao_women,                           'a[title="Women"]' 
    element :bradcramp_woman,                       'span[class="navigation_page"]'
    element :top,                                   'img[src="http://automationpractice.com/img/c/4-medium_default.jpg"]'
    element :bradcramp_top,                         'div[class="breadcrumb clearfix"]'
    element :produto,                               'li[class="ajax_block_product col-xs-12 col-sm-6 col-md-4 first-in-line last-line first-item-of-tablet-line first-item-of-mobile-line last-mobile-line"]'
    element :bradcramp_produto,                     'div[class="breadcrumb clearfix"]'
    
end 

class  ProdutoNoCarrinhoPage < SitePrism::Page 

    
end