Given("the user to access the site") do
  user_access_site
end

When("it interacts with some element on the page") do
  interact_element
end

Then("he visualizes bradcrump following the path of his interaction") do
  @nave.bradcramp_produto.visible?
end

When("he clicks on buy a product") do
  buy_a_product
end

Then("he sees this product in the cart") do
  expect(page).to have_content ("Blouse")
end

When("he access the social network links") do
  access_link
end

Then("it is directed to the link you clicked") do
  page.has_link?("Google")
end

When("he search for a product in search") do |table|
  fill_in_product(table.rows_hash[:product])
end

Then("he views the searched product") do
  @nave.researched_product.visible?
end