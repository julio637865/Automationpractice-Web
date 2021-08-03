Before do
  @regi = Register_page.new
  @logi = Login_page.new
  @nave = Navegation_page.new
end

After do
  shot = page.save_screenshot("logs/temp_evidence.png")

  Allure.add_attachment(
    name: "Screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(shot),
  )
end
