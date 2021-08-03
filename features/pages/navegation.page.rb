class Navegation_page < SitePrism::Page
  set_url "/"
  element :btn_women, 'a[title="Women"]'
  element :bradcramp_woman, 'span[class="navigation_page"]'
  element :top, 'img[src="http://automationpractice.com/img/c/4-medium_default.jpg"]'
  element :bradcramp_top, 'div[class="breadcrumb clearfix"]'
  element :product, 'li[class="ajax_block_product col-xs-12 col-sm-6 col-md-4 first-in-line last-line first-item-of-tablet-line first-item-of-mobile-line last-mobile-line"]'
  element :bradcramp_produto, 'div[class="breadcrumb clearfix"]'
  element :btn_women, 'a[title="Women"]'
  element :product_blouse, 'img[title="Blouse"]'
  element :btn_X, 'span[title="Close window"]'
  element :cart, 'a[href="http://automationpractice.com/index.php?controller=order"]'
  element :link_facebook, 'a[href="https://www.facebook.com/groups/525066904174158/"]'
  element :link_twitter, 'a[href="https://twitter.com/seleniumfrmwrk"]'
  element :link_youtube, 'a[href="https://www.youtube.com/channel/UCHl59sI3SRjQ-qPcTrgt0tA"]'
  element :link_google_plus, 'a[href="https://plus.google.com/111979135243110831526/posts"]'
  element :name_product, 'input[id="search_query_top"]'
  element :btn_magnifying_glass, 'button[class="btn btn-default button-search"]'
  element :researched_product, 'img[src="http://automationpractice.com/img/p/1/0/10-home_default.jpg"]'
end

module Actions
  def user_access_site
    @nave.load
  end

  def interact_element
    @nave.btn_women.click
    @nave.bradcramp_woman.visible?
    @nave.top.click
    @nave.bradcramp_top.visible?
    @nave.product.click
  end

  def buy_a_product
    @nave.btn_women.click
    @nave.product_blouse.click

    within_frame(find('iframe[class="fancybox-iframe"]')) do #--> method to interact with iframe
      click_on "Add to cart"
    end

    @nave.btn_X.click
    @nave.cart.hover
  end

  def access_link
    @nave.link_facebook.click
    page.has_link?("Nova atividade")
    @nave.link_twitter.click
    page.has_link?("Tweets")
    @nave.link_youtube.click
    page.has_link?("Shorts")
    @nave.link_google_plus.click
  end

  def fill_in_product(product)
    @nave.name_product.set(product)
    @nave.btn_magnifying_glass.click
  end
end
