AfterStep('@selenium') do
  $driver.save_screenshot("../employee/reports/screenshots/screenshot.png")
  encoded_img = $driver.screenshot_as(:base64)
  attach("#{encoded_img}",'image/png')
end