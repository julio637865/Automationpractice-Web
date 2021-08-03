Given("the user to access the login page") do
  acess_page_login
end

When("he fills in valid login and password") do |table|
  fill_in_password_and_email(table.rows_hash[:email_login], table.rows_hash[:password_login])
end

Then("he is able to log in to the platform") do
  expect(page).to have_css("#my-account", text: "My account")
end

When("he fills in invalid email and password") do |table|
  fill_in_password_and_email(table.rows_hash[:email_login],table.rows_hash[:password_login])
end

When("he fills in invalid password") do |table|
  fill_in_password_and_email(table.rows_hash[:email_login],table.rows_hash[:password_login])
end

When("he fills an invalid email") do |table|
  fill_in_password_and_email(table.rows_hash[:email_login],table.rows_hash[:password_login])
end

Then("he cannot login") do
  expect(page).to have_content ("There is 1 error")
end