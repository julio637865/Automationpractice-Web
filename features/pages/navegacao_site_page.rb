class BreadcrumbPage < SitePrism::Page 

    element :botao_women,                           'a[title="Women"]' 
    element :bradcramp_woman,                       'span[class="navigation_page"]'
    element :top,                                   'img[src="http://automationpractice.com/img/c/4-medium_default.jpg"]'
    element :bradcramp_top,                         'div[class="breadcrumb clearfix"]'
    element :produto,                               'li[class="ajax_block_product col-xs-12 col-sm-6 col-md-4 first-in-line last-line first-item-of-tablet-line first-item-of-mobile-line last-mobile-line"]'
    element :bradcramp_produto,                     'div[class="breadcrumb clearfix"]'
end 

class  ProdutoNoCarrinhoPage < SitePrism::Page 

    element :botao_women,                           'a[title="Women"]'
    element :produto_blouse,                        'img[title="Blouse"]'
    element :botao_X,                               'span[title="Close window"]'  
    element :carrinho,                              'a[href="http://automationpractice.com/index.php?controller=order"]'  
end

class LinksRedeSocial < SitePrism::Page

    element :link_facebook,                         'a[href="https://www.facebook.com/groups/525066904174158/"]'
    element :link_twitter,                          'a[href="https://twitter.com/seleniumfrmwrk"]'  
    element :link_youtube,                          'a[href="https://www.youtube.com/channel/UCHl59sI3SRjQ-qPcTrgt0tA"]'
    element :link_google_plus,                      'a[href="https://plus.google.com/111979135243110831526/posts"]'
end

class PesquisaPage < SitePrism::Page

    element :nome_do_produto,                       'input[id="search_query_top"]'
    element :botao_lupa,                            'button[class="btn btn-default button-search"]'
    element :produto_pesquisado,                    'img[src="http://automationpractice.com/img/p/1/0/10-home_default.jpg"]'
end