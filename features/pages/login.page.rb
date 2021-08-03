class Login_page < SitePrism::Page
  set_url "/"
  element :password_login, 'input[id="passwd"]'
  element :email_login, 'input[id="email"]'
end

module Actions
  def acess_page_login
    @logi.load
    click_on "Sign in"
  end

  def fill_in_password_and_email(email_login, password_login)
    @logi.email_login.set(email_login)
    @logi.password_login.set(password_login)
    click_on "SubmitLogin"
  end
end
