AfterStep do
  $driver.save_screenshot("C:/Users/chris/Documents/InMetrics/Ruby/teste-inmetrics/reports/screenshots/screenshot.png")
  encoded_img = $driver.screenshot_as(:base64)
  attach("#{encoded_img}",'data:image/png;base64')
end