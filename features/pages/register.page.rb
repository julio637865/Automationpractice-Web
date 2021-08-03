class Register_page < SitePrism::Page
  set_url "/"
  element :registration_email, "#email_create"
  element :create_account, "#SubmitCreate"
  element :gender_sir, "#id_gender1"
  element :first_name, "#customer_firstname"
  element :second_name, "#customer_lastname"
  element :password, "#passwd"
  element :birth_day, "#uniform-days"
  element :birth_month, "#uniform-months"
  element :year_birth, "#uniform-years"
  element :complement, "#company"
  element :address, "#address1"
  element :address_two, "#address2"
  element :city, "#city"
  element :state, "#uniform-id_state"
  element :zip_code, "#postcode"
  element :country, "#uniform-id_country"
  element :additional_information, "#other"
  element :telephone, "#phone"
  element :cell_phone, "#phone_mobile"
  element :alternate_address, "#alias"
end

module Actions
  def acess_page_register
    @regi.load
    click_on "Sign in"
  end

  def set_information(email, name, second_name, password, complement, address, address_two, city, zip_code, additional_information,
    telephone, cell_phone, alternate_address)
    @regi.registration_email.set(email)
    @regi.create_account.click
    @regi.gender_sir.click
    @regi.first_name.set(name)
    @regi.second_name.set(second_name)
    @regi.password.set(password)
    @regi.birth_day.all(:css, "option").find { |o| o.value == "21" }.select_option
    @regi.birth_month.all(:css, "option").find { |o| o.value == "2" }.select_option
    @regi.year_birth.all(:css, "option").find { |o| o.value == "1997" }.select_option
    @regi.complement.set(complement)
    @regi.address.set(address)
    @regi.address_two.set(address_two)
    @regi.city.set(city)
    @regi.state.all(:css, "option").find { |o| o.value == "2" }.select_option
    @regi.zip_code.set(zip_code)
    @regi.country.all(:css, "option").find { |o| o.value == "21" }.select_option
    @regi.additional_information.set(additional_information)
    @regi.telephone.set(telephone)
    @regi.cell_phone.set(cell_phone)
    @regi.alternate_address.set(alternate_address)
    click_on 'Register'
  end
end