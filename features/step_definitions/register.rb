Given("the user to access the registration page") do
  acess_page_register
end

When("he fills in valid information") do |table|
  set_information(table.rows_hash[:email],table.rows_hash[:name],table.rows_hash[:second_name],table.rows_hash[:password],table.rows_hash[:complement],table.rows_hash[:address],table.rows_hash[:address_two],table.rows_hash[:city],table.rows_hash[:zip_code],table.rows_hash[:additional_information],table.rows_hash[:telephone],table.rows_hash[:cell_phone],table.rows_hash[:alternate_address])
end

Then('your registration is successful') do
  expect(page).to have_css("#my-account", text: 'My account')
end